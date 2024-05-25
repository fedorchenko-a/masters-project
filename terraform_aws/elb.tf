resource "aws_elb" "ltiserv_lb" {
  name               = "lti-lb"
  subnets            = [aws_subnet.main.id]
  security_groups    = [aws_security_group.web_sg.id]

  listener {
    instance_port     = 8000
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:8000/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  instances = [
    aws_instance.web.id,
  ]

  tags = {
    Name = "lti-lb"
  }
}