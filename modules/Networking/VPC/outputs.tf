output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_01_id" {
  value = aws_subnet.main.id
}

output "public_subnet_02_id" {
  value = aws_subnet.main2.id
}

output "public_subnet_03_id" {
  value = aws_subnet.main3.id
}

output "private_subnet_01_id" {
  value = aws_subnet.main4.id
}

output "private_subnet_02_id" {
  value = aws_subnet.main5.id
}

output "private_subnet_03_id" {
  value = aws_subnet.main6.id
}

output "public_01_igw_id" {
  value=aws_internet_gateway.gw_01.id
}

output "public_rt_01_id" {
  value = aws_route_table.public_rt_01.id
}

output "nat_01_id" {
  value = aws_nat_gateway.nat_01.id
}

output "private_rt_01_id" {
  value = aws_route_table.private_rt_01.id
}

output "nat_02_id" {
  value = aws_nat_gateway.nat_02.id
}

output "private_rt_02_id" {
  value = aws_route_table.private_rt_02.id
}

output "nat_03_id" {
  value = aws_nat_gateway.nat_03.id
}

output "private_rt_03_id" {
  value = aws_route_table.private_rt_03.id
}