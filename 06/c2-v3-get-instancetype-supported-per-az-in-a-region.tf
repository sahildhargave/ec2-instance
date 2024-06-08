# Get List of Availability Zones in a Specific Region
data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

# Check if the respective instance type is supported in that specific region in list of availability zones
data "aws_ec2_instance_type_offerings" "my_ins_type" {
  for_each = toset(data.aws_availability_zones.my_azones.names)
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = [each.key]
  }
  location_type = "availability-zone"
}

# Output - 1
output "output_v3_1" {
  value = {
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type:
    az => details.instance_types if length(details.instance_types) != 0
  }
}

# Output - 3
output "output_v3_3" {
  value = keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type:
    az => details.instance_types if length(details.instance_types) != 0
  })
}

# Output - 4 (additional learning)
output "output_v3_4" {
  value = keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type:
    az => details.instance_types if length(details.instance_types) != 0
  })[0]
}
