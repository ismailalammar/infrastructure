provider "aws" {
    region = "eu-west-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

data "aws_vpc" "default_vpc" {
    default = true
}

resource "aws_subnet" "subnet-1" {
    vpc_id = data.aws_vpc.default_vpc.id
    cidr_block = "172.31.48.0/20"
    availability_zone = "eu-west-1a"
    tags = {
        Name = "subnet-1-dev"
    }
}