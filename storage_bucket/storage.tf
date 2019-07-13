resource "google_storage_bucket" "gke-from-scratch-terraform-state" {
  name     = "gke-from-scratch-terraform-state"
  location = "EU"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}