resource "google_container_node_pool" "extra-pool" {
  name               = "extra-node-pool"
  zone               = "europe-west1-b"
  cluster            = "${google_container_cluster.gke-cluster.name}"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "f1-micro"
}
}
