# Data source for each availability zone
data "aws_ec2_instance_type_offerings" "my_ins_type_us_east_1a" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = ["us-east-1a"]
  }
  location_type = "availability-zone"
}

data "aws_ec2_instance_type_offerings" "my_ins_type_us_east_1e" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = ["us-east-1e"]
  }
  location_type = "availability-zone"
}

# Output - 1
output "output_v2_1" {
  value = concat(
    data.aws_ec2_instance_type_offerings.my_ins_type_us_east_1a.instance_types,
    data.aws_ec2_instance_type_offerings.my_ins_type_us_east_1e.instance_types
  )
}

# Output - 2
output "output_v2_2" {
  value = {
    "us-east-1a" = data.aws_ec2_instance_type_offerings.my_ins_type_us_east_1a.instance_types,
    "us-east-1e" = data.aws_ec2_instance_type_offerings.my_ins_type_us_east_1e.instance_types
  }
}
