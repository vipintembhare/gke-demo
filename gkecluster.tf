resource "google_container_cluster" "gke-cluster" {
  name               = "dev-cluster"
  network            = "default"
  zone               = "europe-west1-b"
  machine_type       ="f1-micro"
  initial_node_count = 3
}
