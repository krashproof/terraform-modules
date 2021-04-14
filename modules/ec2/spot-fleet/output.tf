output "id" {
  value = aws_spot_fleet_request.this.id
}

output "state" {
  value = aws_spot_fleet_request.this.spot_request_state
}
