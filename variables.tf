

# input variable 
# use in tf-config definition
# dynamic
# when using in main.tf in will be var.<variable_name>
variable "instance_name" {
    description = "name of the instance"
    type = string
}

variable "root_password" {
  description = "password for root user"
  type = string
  sensitive = true
}


# local variable
# temporary variable within scope of function
# use with repeat value appear in configuration
# local.<local_var_name>
locals {
    service_name = "hello_service"
    owner = "me"
}

# Output variable 
# return value of the function
# can be a return value for another terraform config to consume
output "instace_ip" {
    # this ip can be sent to another config e.g. allow this ip to database
    value = aws_instace.instance.public_ip 
}