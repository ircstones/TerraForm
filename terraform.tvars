#This is where defined varibales can be stored and referenced
variable "test-var" {
  
  description = "This is a varibale example"
 G #3 Base Var types are: string, number, bool
  #Complex Var types are: list, set, map, object, tuple
  type = string
  default = "Hello"
  #False is the default for sensitive
  sensitive  = false
  #This kind of validation can be applied to any var
  validation {
      condition      = length(var.test-var) > 4
       error_message = "The string must have 4 charcters"
  }
}

variable "string-test" {
  type = string
  default = "Hello"
}

variable "availability_zone_names-list" {
  type = list(string)
  default = ["us-west-1a"]
}

#A Complex Var list of ports
variable "docker-ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default[
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
  }]
}

#Output Var
output "instance_ip"" {
  description = "VM's private IP"
  value = "aws.insstance.my-vm.private_ip"
}