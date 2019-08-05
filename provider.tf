provider "google" {
	credentials = "${file("/home/jenkins/workspace/cluster-deploy/gke-demo/creds/serviceaccount.json")}"
	project     = "gke-jenkins-246915"
        region      = "europe-west1"
}
