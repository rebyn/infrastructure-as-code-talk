cluster "equinixmetal" {
  asset_dir    = "./assets"
  cluster_name = "lokomotive-demo"

  dns {
    zone     = "XXX"
    provider = "route53"
  }

  facility   = "nrt1"
  project_id = "3ce694b3-71d6-4388-9fd3-f5e85485ac0c"

  # controller_type = "t1.small.x86"
  controller_type = "c3.small.x86"

  ssh_pubkeys        = ["XXX"]
  management_cidrs   = ["123.21.114.209/32", "103.153.75.40/32"]
  node_private_cidrs = ["10.1.0.0/8"]

  controller_count = 1

  worker_pool "pool-1" {
    count     = 1
    node_type = "t1.small.x86"
  }
}

# A demo application.
component "httpbin" {
  ingress_host = "httpbin.XXX"
}
