output "network_id" {
  value = "${openstack_networking_network_v2.base_network.id}"
}

output "network_name" {
  value = "${openstack_networking_network_v2.base_network.name}"
}


output "public_subnets_ids" {
  value = "${openstack_networking_subnet_v2.public_subnet.*.id}"
}