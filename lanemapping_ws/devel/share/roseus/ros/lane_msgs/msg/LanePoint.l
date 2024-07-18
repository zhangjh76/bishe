;; Auto-generated. Do not edit!


(when (boundp 'lane_msgs::LanePoint)
  (if (not (find-package "LANE_MSGS"))
    (make-package "LANE_MSGS"))
  (shadow 'LanePoint (find-package "LANE_MSGS")))
(unless (find-package "LANE_MSGS::LANEPOINT")
  (make-package "LANE_MSGS::LANEPOINT"))

(in-package "ROS")
;;//! \htmlinclude LanePoint.msg.html


(defclass lane_msgs::LanePoint
  :super ros::object
  :slots (_x _y _z _visibility ))

(defmethod lane_msgs::LanePoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:visibility __visibility) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _visibility (float __visibility))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _visibility
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visibility
       (sys::poke _visibility (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visibility
     (setq _visibility (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_msgs::LanePoint :md5sum-) "7e3d90e07dd35cfd897ffc2308933bfc")
(setf (get lane_msgs::LanePoint :datatype-) "lane_msgs/LanePoint")
(setf (get lane_msgs::LanePoint :definition-)
      "float32 x
float32 y
float32 z
float32 visibility
")



(provide :lane_msgs/LanePoint "7e3d90e07dd35cfd897ffc2308933bfc")

