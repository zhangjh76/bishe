#include <iostream>
#include <Eigen/Core>  

#include <Eigen/Dense>

struct Loc{
    Eigen::Vector3d m_local_position;
    Eigen::Vector3d m_ego_position;
};

void loc_init(Loc loc);


