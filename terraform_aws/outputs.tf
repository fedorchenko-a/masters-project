output "server_ip" {
  value = aws_instance.web.public_ip
}

output "elb_dns_name" {
  value = aws_elb.ltiserv_lb.dns_name
}