# Declare the data source
data "aws_availability_zones" "azs" {
  state = "available"
  #all_availability_zones = true
}

# e.g., Create subnets in the first two available availability zones

# resource "aws_subnet" "primary" {
#   availability_zone = data.aws_availability_zones.available.names[0]

#   # ...
# }

# resource "aws_subnet" "secondary" {
#   availability_zone = data.aws_availability_zones.available.names[1]

#   # ...
# }

data "aws_vpc" "default" {
  default = true  
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id 
  filter {
    name = "association.main"
    values = ["true"]
  }
}