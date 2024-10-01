resource "aws_main_route_table_association" "update" {
  depends_on = [
    aws_route_table.cluster-route-tables
  ]
  vpc_id         = "vpc-af593ec7"
  route_table_id = aws_route_table.cluster-route-tables.id
}

resource "aws_route_table" "cluster-route-tables" {
  depends_on = [
    aws_instance.nat_bridge
  ]
  propagating_vgws = []
  route = [
    {
      carrier_gateway_id         = null
      cidr_block                 = "0.0.0.0/0"
      core_network_arn           = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      nat_gateway_id             = null
      network_interface_id       = aws_instance.nat_bridge.primary_network_interface_id
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
    },
  ]
  tags = {
    "Name" = "cluster-route-tables"
  }
  tags_all = {
    "Name" = "cluster-route-tables"
  }
  vpc_id = "vpc-af593ec7"
}