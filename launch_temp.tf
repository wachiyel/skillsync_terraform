resource "aws_launch_template" "web_server_template" {
  name_prefix   = "web-server-template-"
  image_id      = "ami-0ae8f15ae66fe8cda"
  instance_type = "t3.micro"
  key_name      = "skillsync_key"

  iam_instance_profile {
    name = aws_iam_instance_profile.server_profile.name
  }

  vpc_security_group_ids = [aws_security_group.web-app-security-group.id]

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "web-server"
    }
  }

  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = false
      encrypted             = true
      volume_size           = 20
      volume_type           = "gp3" 
    }
  }
}

resource "aws_launch_template" "app_server_temp" {
  name_prefix   = "web-server-template-"
  image_id      = "ami-0ae8f15ae66fe8cda"
  instance_type = "t3.micro"
  key_name      = "skillsync_key"

  iam_instance_profile {
    name = aws_iam_instance_profile.server_profile.name
  }

  vpc_security_group_ids = [aws_security_group.web-app-security-group.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "app-server"
    }
  } 
}