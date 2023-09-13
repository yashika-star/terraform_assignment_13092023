resource "aws_instance" "multiple_instances" {
  count = 2
  
  ami           = var.ami[count.index]
  instance_type = var.inst_type[count.index]
  subnet_id = "subnet-0962069167a59d185"

  tags = {
    Name = var.name[count.index]
    owner = "yashika@cloudeq.com"
  }
  
  volume_tags = {
    Name = var.name[count.index]
    owner = "yashika@cloudeq.com"
  }
}

output "instance_id" {
  value = [for inst in aws_instance.multiple_instances: inst.id]
}

output "instance_publicIP" {
  value = [for inst in aws_instance.multiple_instances: inst.public_ip]
}