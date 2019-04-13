resource "openstack_networking_network_v2" "base_network" {
  name           = "base_network"
  admin_state_up = "true"
}