resource "aws_autoscaling_group" "app_asg" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = var.public_subnet_ids
  health_check_type    = "EC2"
  launch_template {
    id      = aws_instance.web.id
    version = "$Latest"
  }
 
  tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
  }
 
  lifecycle {
    create_before_destroy = true
  }
}