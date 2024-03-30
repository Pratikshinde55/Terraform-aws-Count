
#### data source for retrieve amazon ami id using ami name syntax 
data "aws_ami" "AWSaminame" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

### Lanuch EC2 instance using "count Meta-argument"
resource "aws_instance" "psOS" {
  ami                    = data.aws_ami.AWSaminame.id
  instance_type          =  "${var.instanceType[count.index]}"
  vpc_security_group_ids = [var.sec-grpID]
  count                  = 3
  tags = {
    Name = "instance-by-${var.names[count.index]}"
  }
}


### variable for instance name 

variable "names" {
  type    = list(string)
  default = ["pratik", "lucky", "Tom"]

}

### variable for instance type 

variable "instanceType" {
  type    = list(any)
  default = ["t2.small", "t2.micro", "t2.medium"]
}


### varible for security grp

variable "sec-grpID" {
    type = any 
    default = "sg-0f7b4bf0eeb2e36f8"
}

### varible for out something

variable "Give-true-false" {
      type = bool
}
output "op" {
     value = var.Give-true-false == true ? "hi welcome lets launch Instance" : "Bye try again later"
}

### use "locals" varible where can use terraform function 
locals {
  admin_name = "pratik"
  owner = "DevOps"
  salary_in_K = max(6,8,10,18)
  currentTime = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

output "op1" {
    value = local.currentTime
#    value = local.admin_name
#   value = local.salary_in_K
}

