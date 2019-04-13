# Subnet #
resource "openstack_networking_subnet_v2" "public_subnet" {
  count      = "${var.number_of_public_subnets}"
  name       = "public_subnet"

  network_id = "${openstack_networking_network_v2.base_network.id}"
  cidr       = "${cidrsubnet(var.cidr, 8, count.index + 1)}"
  ip_version = 4
}

# -------------- Routing -------------- #

resource "openstack_networking_router_v2" "router_1" {
  name                = "my_router"
  external_network_id = "${openstack_networking_network_v2.base_network.id}"
}

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = "${openstack_networking_router_v2.router_1.id}"
  subnet_id = "${openstack_networking_subnet_v2.public_subnet.id}"
}