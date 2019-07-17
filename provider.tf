provider "google" {
	credentials = "${file("./creds/serviceaccount.json")}"
	project     = "gke-jenkins-246915"
        region      = "europe-west1"
}
