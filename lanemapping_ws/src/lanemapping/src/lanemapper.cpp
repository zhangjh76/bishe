#include "utility.h"

class LaneMapper{
    
public:
    ros::Subscriber Sublocinfo;
    ros::Subscriber Subviperline;

    ros::Publisher Publaneline;

    LaneMapper()
    {
        init();
        Sublocinfo = nh.subscribe<geometry_msgs/PoseStamped>("/gt_pose_wc",1,&LaneMapper::Loc_process, this);
        Subviperline = nh.subscribe<lanemapper/LaneList>("/lanes_predict",1, &LaneMapper::lanemapper, this);

        Publisher = nh.advertise<lanemapper/LaneList>("/buildedlane",);
    }

    void init(){
        m_position_local = {0, 0, 0};
        m_R_local = Eigen::Indentity();
    }

    void Loc_process(const geometry_msgs::PoseStamped loc_info){

        Eigen::Quaterniond q = {loc_info.pose.orientation.x, 
                                loc_info.pose.orientation.y, 
                                loc_info.pose.orientation.z, 
                                loc_info.pose.orientation.w};
        Eigen::Matrix3d last_R = m_R_local;
        m_R_local = q.matrix();


        Eigen::Vector3d last_position = m_position_local;
        m_position_local.x() = loc_info.pose.position.x;
        m_position_local.y() = loc_info.pose.position.y;
        m_position_local.z() = loc_info.pose.position.z;
        
        m_t_diff = m_position_local - last_position;
        m_R_diff = m_R_local * last_R.transpose();
    }

private:
    static Eigen::Vector3d m_position_local;
    static Eigen::Matrix3d m_R_local;
    Eigen::Vector3d m_t_diff;
    Eigen::Matrix3d m_R_diff;
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "lanemapper");

    ros::NodeHandle nh;

    LaneMapper LM;

    
    ros::spin();

    return 0;
}