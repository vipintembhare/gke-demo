provider "google" {
	credentials = "${file(".gke-demo/creds/serviceaccount.json")}"
	project     = "conference-console"
        region      = "europe-west1"
}
