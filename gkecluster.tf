resource "google_container_cluster" "gke-cluster" {
  name               = "dev-cluster"
  network            = "default"
  zone               = "europe-west1-c"
  initial_node_count = 3
}
