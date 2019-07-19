# gke-demo
Google Kubernetes Demo with TerraForm

# Commands used
  Terraform
  
      terraform init

      terraform plan -out myplan

      terraform apply myplan
      
      terraform destroy

  GCP
      
      gcloud compute project-info describe --project <project-id>
      
  Kubectl
      
      $ kubectl get pods --selector=app=<label>
      
# Pitfalls
    1. Cannot find the project while executing plan
    -> Make sure the private key used for terraform gcp provider has same project id.
       https://github.com/hashicorp/terraform/issues/4031
   
     https://stackoverflow.com/a/50279396
     
     https://stackoverflow.com/questions/39814680/scopes-required-for-executing-gcloud-container-clusters-create-on-gce-vm-insta
    
    Jenkins Job getting killed
     https://stackoverflow.com/questions/24989653/jenkins-maven-build-137-error

# Reads
[Creating GKE cluster with Terraform](https://medium.com/@timhberry/learn-terraform-by-deploying-a-google-kubernetes-engine-cluster-a29071d9a6c2)

[Terraform GKE documentation](https://www.terraform.io/docs/providers/google/r/container_cluster.html)

[GCP Terraform provider](https://www.terraform.io/docs/providers/google/index.html)

[Setting up Jenkins on Google Kubernetes Engine- Tim Berry](https://medium.com/@timhberry/deploy-jenkins-to-google-kubernetes-engine-with-helm-60e0a4d7de93)

[Setting up Jenkins on Google Kubernetes Engine](https://cloud.google.com/solutions/jenkins-on-kubernetes-engine-tutorial)

[Continuous Deployment to Kubernetes Engine using Jenkins](https://cloud.google.com/solutions/continuous-delivery-jenkins-kubernetes-engine)

[Use a Service to Access an Application in a Cluster](https://kubernetes.io/docs/tasks/access-application-cluster/service-access-application-cluster/)

[RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

[HELM charts](https://github.com/helm/charts/tree/master/stable)

[GKE](https://medium.com/@timhberry/deploy-a-highly-available-shared-storage-service-in-google-kubernetes-engine-with-regional-bbc87276c8ea)

[Terraform PipeLine](https://medium.com/@timhberry/terraform-pipelines-in-gitlab-415b9d842596)

[GCR in Jenkins](https://itnext.io/setup-jenkins-with-google-container-registry-2f8d39aaa275)

[GCR in Jenkins](https://medium.com/google-cloud/how-to-push-docker-image-to-google-container-registry-gcr-through-jenkins-job-52b9d5ce9f7f)

[Kubectl deployment](https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer)
