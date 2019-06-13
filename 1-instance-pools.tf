variable "region_ami" {
  type = "map"

  default = {
    eu-central-1   = "ami-0ad303949e19f897a"
    eu-north-1     = "ami-0d76cb8752ad73ab1"
    eu-west-1      = "ami-0f38cdec7da648424"
    eu-west-2      = "ami-0127cb92c2ac61534"
    eu-west-3      = "ami-0083960c1530c641f"
    us-east-1      = "ami-0a01a5636f3c4f21c"
    us-east-2      = "ami-0a02eadc6d8770f83"
    us-west-1      = "ami-0bbeea654a35ef611"
    us-west-2      = "ami-0a1af68029fa293b6"
    sa-east-1      = "ami-059c26b020488b2f7"
    ap-northeast-1 = "ami-06f36024e5686942b"
    ap-northeast-2 = "ami-06dc38c370d99b344"
    ap-south-1     = "ami-07539529fd98896eb"
    ap-southeast-1 = "ami-01c8f677b79c2744f"
    ap-southeast-2 = "ami-0a351e7460c633be1"
    ca-central-1   = "ami-04dc095f40f53ef3b"
  }
}

module "omni_lab_alpha" {
  source = "./modules/omni_box"

  lab_name        = "primary"
  ami             = "${var.region_ami["${var.region}"]}"
  instance_type   = "${var.instance_type}"
  node_count      = "${var.node_count}"
  public_key_path = "${var.public_key_path}"
}
