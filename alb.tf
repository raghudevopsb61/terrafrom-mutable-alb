resource "aws_lb" "public" {
  name               = "${var.ENV}-public-alb"
  internal           = false
  load_balancer_type = "application"
  //security_groups    = [aws_security_group.lb_sg.id]
  subnets = data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNETS

  tags = {
    Environment = "${var.ENV}-public-alb"
  }
}

