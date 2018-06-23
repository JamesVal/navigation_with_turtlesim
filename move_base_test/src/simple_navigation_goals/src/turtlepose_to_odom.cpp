#include "ros/ros.h"
#include "tf/transform_broadcaster.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Quaternion.h"
#include "turtlesim/Pose.h"

ros::Publisher odom_pub;

void poseCallback(const turtlesim::PoseConstPtr& msg)
{
  static tf::TransformBroadcaster odom_broadcaster;

  geometry_msgs::Quaternion odom_quat_msg = tf::createQuaternionMsgFromYaw(msg->theta);

  // Transmit Transform info
/*
  geometry_msgs::TransformStamped odom_trans;
  odom_trans.header.stamp = ros::Time::now();
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";

  odom_trans.transform.translation.x = msg->x;
  odom_trans.transform.translation.y = msg->y;
  odom_trans.transform.translation.z = 0.0;
  odom_trans.transform.rotation = odom_quat;

  //send the transform
  //odom_broadcaster.sendTransform(odom_trans);
*/
  //broadcaster2.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)), ros::Time::now(), "odom", "base_link"));
  odom_broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(odom_quat_msg.x, odom_quat_msg.y, odom_quat_msg.z, odom_quat_msg.w), tf::Vector3(msg->x, msg->y, 0)), ros::Time::now(), "odom", "base_link"));

  nav_msgs::Odometry odom;
  odom.header.stamp = ros::Time::now();
  odom.header.frame_id = "odom";

  odom.pose.pose.position.x = msg->x;
  odom.pose.pose.position.y = msg->y;
  odom.pose.pose.position.z = 0.0;
  odom.pose.pose.orientation = odom_quat_msg;

  //set the velocity
  odom.child_frame_id = "base_link";
  odom.twist.twist.linear.x = msg->linear_velocity * cos(msg->theta);
  odom.twist.twist.linear.y = msg->linear_velocity * sin(msg->theta);
  odom.twist.twist.angular.z = msg->angular_velocity;

  //publish the message
  odom_pub.publish(odom);

  //turtle_pub.publish(msg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "turtlepose_to_odom");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("turtle1/pose", 1000, poseCallback);
  odom_pub = n.advertise<nav_msgs::Odometry>("odom", 1000);
  ROS_INFO("TURTLEPOSE RUNNING");
  ros::spin();

  return 0;
}

