##### Teraform Fundamentals


Terraform is an open-source infrastructure as code software tool created by HashiCorp, enabling users to define and provision data center infrastructure using a high-level configuration language. It automates the process of setting up, managing, and scaling cloud resources across multiple service providers​

-[x] Flowcharts
- Terraform Fundamentals
- Kubernetes Fundaments
- AWS VPC 3-Tier Network
- EC2 Bastion Host in Public Subnets
- EKS Cluster (Public And Private Node Group)
- Kubernetes Development & Services using TF K8s Provider 
- Terraform Remote State Storage
- EKS IRSA (aws iam rOLES FOR K8S Service Accounts)
- Kubernets Storage : ebs csi
- kubernets Storage : EFS CSI
- EKS Load Balancer Controller Ingress
- EKS IAM EKS Fragate
- Autoscaling
- EKS Monitoring and Logging
  
### EBS CSI (Container Storage Interface) Controllers manage the provisioning and lifecycle of Amazon Elastic Block Store (EBS) volumes for Kubernetes clusters, providing persistent storage for pods. EFS CSI Controllers, on the other hand, handle the integration of Amazon Elastic File System (EFS) with Kubernetes, allowing dynamic provisioning of shared, scalable file storage accessible by multiple pods simultaneously.


![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

#### AWS EKS Load Balancer 
##### Terraform
- AWS Load Balancer Controller
- AWS Application Load Balancer
- Kubernetes Ingress Service
- Terraform Kubernetes Provide


 


## Terraform Workflow
- init                      [terraform init]
- validate                  [terraform validate]
- plan                      [terraform plan]
- apply                     [terraform apply]
- destroy                   [terraform destroy]

- [x] Used to initialize a working directory containing      - terraform config files
- This is the first command that should be run after writing a - new terraform configuration
- download providers


- [x] Validate the terraform configurations file in the respective directory to ensure they are syntactically valid and internally consistent.

- [x] Creates an execute plan 
terraform performs a refresh and determines what axtions are necessary to achive the desired state specified in configuration files

- [x] Used to apply the changes required to reach the desired state of the configuration.
By default, apply scan s the current directory for the configuration and applies the changes appropriately 

- [x] Used to destroy the terraform managed infrastructure
this will ask for confirmation before destroying


Terraform Configuration Language Syntax

- Blocks
- Arguments,Attributes and Meta-Arguments
- Identifiers
- Comments

```
😀 Code in the Terraform language is stored in plain text files with the .tf file extension
😀 Terraform configuration files are organized into blocks
😀 Blocks are the basic unit of Terraform configuration
😀 Blocks are composed of arguments, attributes, and meta-arguments
😀 Blocks are identified by their type and name
😀 Blocks can be nested within other blocks
😀 Tere is also a JSON-based variant of the language that is named with the .tf.json file extension.
😀 We can call the files containing terraform code as Terraform Configuration files or terraform manifests

```

### Terraform Top-Level Blocks
- Terraform Settings Blocks
- Provider Block
- Resource Block
- Input Variable Block
- Output Values Block
- Local Values Block
- Data Source Block
- Modules Block

- [x] Fundamental Blocks

Terraform Block
Provider Block
Resource Block

- [x] Variable Blocks
Input Variable Block
Output Values Block
Local Values Block

- [x] Data Sources Block
Data Source Block
Modules Block

#### Terraform Basic Blocks

- [x] Terrafrom Block
- Special Block Used to Configure Some Behaviours
- Requires Terraform Version
- List Required Providers
- Terraform Backend

- [x] Provider Block
- Heart of terraform
- Terraform relies on providers to interact with Remote system
- Declare providers for terraform to install provider and use them
- Provider configurations belong to Root Module

- [x] Resource Block
- Each Resource Block Describes one or more infrastructure object 
- Resource syntax
- Resource Behaviour 
 Provisioners 


 ### Terraform input variables
 ```
 Input variables serve as parameters for a Terraform module , allowing aspects of the module to be customized without altering the module's own source code, and allowing modules to be shared between different configurations.
 ```

 - Input Variable basic
 - Provider inpit variables variable when prompted during terraform plan or apply
 - Override default variable values using CLI argument -var
 - Override default variable values using Environment Variables (TF_var_aa)
 - Provide Input Variable using terraform.tfvars files
 - Provide Input Variables using <any-name>.tfvars file with CLI argument -var-file
 - Provide Input variable using auto.tfvars files
 - Implement Custom Validation Rules in variables
 - Protect sensitive input variables


 ### Terraform  Datasources

 - Data sources allow data to be fetched or computed for use else where in Terraform configuration

 - Use of Data sources allow a terraform configuration to make use of information defined outside of terraform, or defined by another separate terraform configuration.

 - a data source is accessed via a special kind of resource known as a data resource, declared using a data block

 - each data resource is associated with a single data source ,which determines the kind of object(or objects) it reads and what query constraint arguments are available

 - Data resources have the same dependency resolution behavior as defined for managed resources. setting the depends_on meta-argument within data blocks defers reading of the data source until after all changes to the dependencies have been applied.


 ### Terraform Meta-Argument: Cost
 - [x] Terraform Lists And Maps
 - List(String)
 - map(String)

 - [x] Terraform For Loops
 - for loop with list
 - for loop with map
 - for loop with map advanced

 - [x] Splat Operators
 - Legacy Splat Operator
 - Generalized Splat Operator (latest)
 - Understand About Terraform Generic Splat Expression [*] when dealing with count Meta-Argument and Multiple output values