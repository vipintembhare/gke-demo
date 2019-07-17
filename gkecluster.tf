resource "google_container_cluster" "gke-cluster" {
  name               = "dev-cluster"
  network            = "default"
  zone               = "europe-west1-b"
  remove_default_node_pool = true
  initial_node_count = 1
}
