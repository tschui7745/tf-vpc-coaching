/*
module "web_app" {
 source = "./modules/web_app"

 name_prefix = "tschui" 

 instance_type  = "t2.micro"
 instance_count = 2

 vpc_id        = "vpc-0a45d078c6a5528a8"
 public_subnet = false

 alb_listener_arn  = "arn:aws:elasticloadbalancing:ap-southeast-1:255945442255:listener/app/shared-alb/781df24a664ff5db/7d6ff22b13fc0437"
}
*/
module "web_app" {
  source = "./modules/web_app"

  name_prefix = "tschui"

  instance_type  = "t2.micro"
  instance_count = 2

  vpc_id        = "vpc-0a45d078c6a5528a8"
  public_subnet = false

  alb_listener_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:255945442255:listener/app/shared-alb/781df24a664ff5db/7d6ff22b13fc0437"
}