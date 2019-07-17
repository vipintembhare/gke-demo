terraform {
  backend "gcs" {
    bucket = "gke-jenkins-246915-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
