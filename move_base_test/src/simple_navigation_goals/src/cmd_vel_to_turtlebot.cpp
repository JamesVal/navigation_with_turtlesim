#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

ros::Publisher turtle_pub;

void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
  turtle_pub.publish(msg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cmd_vel_to_turtlebot");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/cmd_vel", 1000, cmdVelCallback);
  turtle_pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
  ros::spin();

  return 0;
}

