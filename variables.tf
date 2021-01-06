variable "test_region" {
  default = "us-east-1"
}

variable "web_ports" {
  type = list
  description = "Ports for web server"
  default = [22,80,443]
}

variable "counter" {
  default = 2
}

variable "inst_type" {
  type = list
  default = ["t2.micro", "t2.nano"]
}
