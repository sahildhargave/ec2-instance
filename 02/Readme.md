## Terraform Block
This block can be called in 3 ways .  all means the same
- Terraform Block
- Terraform Settings Block
- Terraform Configure Block

# Each Terraform block can contain a number of settings related to terraform's behaviour

very very important 
- with in a terraform block , only const values can be used ; arguments may not refer to named objects such as resources, input variables , etc, and may not use any of the terraform language built-in functions.