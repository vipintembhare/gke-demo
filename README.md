# gke-demo
Google Kubernetes Demo with TerraForm

# Commands used during the demo
  Terraform
  
      terraform init

      terraform plan -out myplan

      terraform apply myplan

  GCP
      
      gcloud compute project-info describe --project <project-id>
      
# Pitfalls
    1. Cannot find the project while executing plan
    Make sure the private key used for terraform gcp provider has same project id.
   
     
    

# Reads
[Creating GKE cluster with Terraform](https://medium.com/@timhberry/learn-terraform-by-deploying-a-google-kubernetes-engine-cluster-a29071d9a6c2)
[Terraform GKE documentation](https://www.terraform.io/docs/providers/google/r/container_cluster.html)
[GCP Terraform provider](https://www.terraform.io/docs/providers/google/index.html)
