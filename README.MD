# AWS VPC module

This module creates following resources. We are using HA, we are getting 2 AZ automatically. 
- VPC
- Internet gateway with VPC association
- 2 public subnets 1a and 1b
- 2 private subnets 1a and 1b
- 2 database subnets 1a and 1b
- Elastic IP
- NAT gateway in 1a Public subnet
- Public route table
- private route table
- database route table
- subnets and route table associations
- vpc peering if user requests
- adding peering route in default vpc, if user don't provide accepter VPC explicitly
- adding peering routes in public, private, database route tables. 


### Inputs: 
- project_naame (Required) - your project name 
- environment (Required) - which environmnet you are working in 
- vpc_cidr (Optional) - default values is 10.0.0.0/16, user can overwrite
- enable_dns_hostnames(optional) - default value is true
- common_tags(optional) - better to prove
- vpc_tags(optional) - 
- igw_tags(optional)
- public_subnets_cidr (required) - user must provide two valid public subnets
- public_subnets_tags(optional) 
- private_subnets_cidr (required) - user must provide two valid private subnets
- private_subnets_tags(optional) 
- database_subnets_cidr (required) - user must provide two valid database subnets
- database_subnets_tags(optional) 
- nat_gateway_tags(optional)
- public_route_table_tags(optional)
- private_route_table_tags(optional)
- database_route_table_tags(optional)
- is_peering_required(optional) - default value is false
- accepter_vpc_id(optional) - default value is default VPC ID
- vpc_peering_tags(optional) - default value is empty. type is map

### outputs
- vpc_id  - VPC ID created

