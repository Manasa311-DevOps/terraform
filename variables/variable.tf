variable "ami_id" {
    type        = string
    default     = "ami-09c813fb71547fc4f"
    description = "This is AMI ID of devops-practice which is RHEL"
}

variable "instance_type" {
    type        = string
    default     = "t3.micro"
    description  = "This is instance type"

}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        component = "backend"
        Environment = "DEV"
        Terraform  =  "true"
    }
}

variable "sg_name" {
    default = "allow sshh"
}

variable "sg_description" {
  default = "Allow port number 22 for SSH access"
}

variable "from_port" {
    default =  22
    type = number
}

variable "to_port" {
    default =  22
    type = number
}

variable "protocol" {
    default =  "tcp"
}

variable "ingress_cidr" {
    default =  ["0.0.0.0/0"]
    type = list(string)
}

