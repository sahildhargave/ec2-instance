# Terraform Output Values

# Output - For Loop with List
output "for_output_list" {
  description = "For Loop With List"
  value = [for instance in aws_instance.myec2vm : instance.public_dns]
}

# Output - For Loop With Map
output "for_output_map1" {
  description = "For Loop With Map"
  value = { for instance in aws_instance.myec2vm : instance.id => instance.public_dns }
}

# Output - For Loop With Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = { for c, instance in aws_instance.myec2vm : c => instance.public_dns }
}

# Output - Legacy Splat Operator (Legacy) - Returns the list
/*
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.myec2vm.*.public_dns
}
*/

# Output - Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized latest Splat Operator"
  value = aws_instance.myec2vm[*].public_dns
}
