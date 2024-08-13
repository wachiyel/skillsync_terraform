resource "aws_autoscaling_group" "web_server_group" {
  name_prefix          = "web-server-group-"
  min_size             = 1        
  max_size             = 2       
  desired_capacity     = 1       
  health_check_type    = "EC2"   
  vpc_zone_identifier  = [aws_subnet.web-private-a.id]

  launch_template {
    id      = aws_launch_template.web_server_template.id
    version = "$Latest" 
  }
}

resource "aws_autoscaling_group" "app_server_group" {
  min_size             = 1        
  max_size             = 2       
  desired_capacity     = 1       
  health_check_type    = "EC2"
  name_prefix          = "app-server-group-" 
  vpc_zone_identifier  = [aws_subnet.app-private-a.id] 

  launch_template {
    id      = aws_launch_template.app_server_temp.id
    version = "$Latest"
  }
}