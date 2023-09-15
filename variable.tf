variable "ami" {
    type = list(string)
    description = "AMI ids of instances"
}

variable "inst_type" {
    type = list(string)
    description = "Instance types of instances"
}

variable "name" {
    type = list(string)
    description = "Name tag of instances"
}

variable "sg_names" {
    type = list(string)
    description = "security group name"
}

variable "sg_description" {
    type = list(string)
    description = "security group description"
}

variable "sg_to_port" {
    type = list(number)
    description = "SG to-port"
}

variable "sg_protocol" {
    type = list(string)
    description = "SG protocol"
}