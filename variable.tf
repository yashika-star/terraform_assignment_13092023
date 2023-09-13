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