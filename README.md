# gke-demo
Google Kubernetes Demo with TerraForm

# Commands used during the demo
  Terraform
  
      terraform init

      terraform plan -out myplan

      terraform apply myplan
      
      terraform destroy

  GCP
      
      gcloud compute project-info describe --project <project-id>
      
# Pitfalls
    1. Cannot find the project while executing plan
    -> Make sure the private key used for terraform gcp provider has same project id.
       https://github.com/hashicorp/terraform/issues/4031
   
     https://stackoverflow.com/a/50279396
    

# Reads
[Creating GKE cluster with Terraform](https://medium.com/@timhberry/learn-terraform-by-deploying-a-google-kubernetes-engine-cluster-a29071d9a6c2)

[Terraform GKE documentation](https://www.terraform.io/docs/providers/google/r/container_cluster.html)

[GCP Terraform provider](https://www.terraform.io/docs/providers/google/index.html)

[Setting up Jenkins on Google Kubernetes Engine- Tim Berry](https://medium.com/@timhberry/deploy-jenkins-to-google-kubernetes-engine-with-helm-60e0a4d7de93)

[Setting up Jenkins on Google Kubernetes Engine](https://cloud.google.com/solutions/jenkins-on-kubernetes-engine-tutorial)

[Continuous Deployment to Kubernetes Engine using Jenkins](https://cloud.google.com/solutions/continuous-delivery-jenkins-kubernetes-engine)

(Use a Service to Access an Application in a Cluster)[https://kubernetes.io/docs/tasks/access-application-cluster/service-access-application-cluster/]

[RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
