provider "google" {
	credentials = "${file("/home/jenkins/workspace/cluster-deploy/gke-demo/creds/serviceaccount.json")}"
	project     = "conference-console"
        region      = "europe-west1"
}
