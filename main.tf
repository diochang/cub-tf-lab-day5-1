Provider "aws" {
    region = ver.region
}

data "aws_ssm_parameter" "linux_ami" {
    name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_ssm_parameter" "dio_ami" {
    ami               = data.aws_ssm_parameter.linux_ami.value
    instance_type     = var.instance_type
    availability_zone = var.instance_az
    count             = var.instance_count 
    tags = {
        Name          = "dio_example01"
        Environment   = "dev"
  }
}