provider "google" {
	credentials = "${file("./creds/serviceaccount.json")}"
	project     = "lyrical-bolt-246610"
        region      = "europe-west1"
}