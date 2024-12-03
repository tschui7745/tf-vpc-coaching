/*
data "aws_vpc" "selected" {
 id = var.vpc_id
}

data "aws_subnets" "public" {
 filter {
   name   = "vpc-id"
   values = [var.vpc_id]
 }
 filter {
   name   = "tag:Name"
   values = ["*public*"]
 }
}

data "aws_subnets" "private" {
 filter {
   name   = "vpc-id"
   values = [var.vpc_id]
 }
 filter {
   name   = "tag:Name"
   values = ["*private*"]
 } 
}
*/

data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
  filter {
    name   = "tag:Name"
    values = ["*public*"]
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
  filter {
    name   = "tag:Name"
    values = ["*private*"]
  }
}

data "aws_lb_listener" "this" {
  count = var.alb_listener_arn != "" ? 1 : 0
  arn   = var.alb_listener_arn
}

data "aws_lb" "this" {
  count = var.alb_listener_arn != "" ? 1 : 0
  arn   = data.aws_lb_listener.this[0].load_balancer_arn
}

# # enhancements
# data "subnet" "selected" {
#   filter {
#     name = "tag:Name"
#     values = var.public_subnet ? ["*-public-*"] : ["*-private-*"]
#   }
# }