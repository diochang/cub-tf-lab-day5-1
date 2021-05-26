variable "region" {
    type = string

}

variable "instance_az" {
  type = string
}


variable "instance_count" {
    type = number
    default = 1
}
 
variable "instance_type" {
    type = string
    default = "t3.mirco"
}

variable "instance_name" {
    type = string
}
