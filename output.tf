output "security_group_id" {
    value = [for sg in aws_security_group.yashika_SG: sg.id]
}

output "instance_id" {
  value = [for inst in aws_instance.multiple_instances: inst.id]
}

output "instance_publicIP" {
  value = [for inst in aws_instance.multiple_instances: inst.public_ip]
}