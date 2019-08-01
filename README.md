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
      
   Replication Controller
      
      kubectl get pods -o wide
      kubectl get pods/hello-pod
      kubectl get pods --all-namespaces

      kubectl delete pods/hello-pod

      kubectl create -f rc.yml
      kubectl get rc -o wide
      kubectl describe rc
      kubectl apply -f rc.yml

      kubectl get rc
      kubectl get pods
      
   Kubectl Deployment
   
      kubectl apply -f deploy.yml --record

      kubectl rollout status deployments hello-deploy

      kubectl get deploy hello-deploy

      kubectl rollout history deployments hello-deploy

      kubectl get rs

      kubectl describe deploy hello-deploy

      kubectl rollout undo deployment hello-deploy --to-revision=1

      kubectl get deploy

      kubectl rollout status deployments hello-deploy
   
  Linux
      
      ps -ef |grep dockerd
      find . -name "foo*"
      
# Pitfalls
    1. Cannot find the project while executing plan
    -> Make sure the private key used for terraform gcp provider has same project id.
       https://github.com/hashicorp/terraform/issues/4031
   
     https://stackoverflow.com/a/50279396
     
     https://stackoverflow.com/questions/39814680/scopes-required-for-executing-gcloud-container-clusters-create-on-gce-vm-insta
    
    Jenkins Job getting killed
     https://stackoverflow.com/questions/24989653/jenkins-maven-build-137-error
     
     Exec into Pod, find node and container Id
     https://stackoverflow.com/a/42805365
     
     Jenkins Master is down
     https://stackoverflow.com/questions/15112890/jenkins-not-executing-jobs-pending-waiting-for-next-executor
     
     ///var/run/docker.sock file not there
     https://stackoverflow.com/questions/28424014/dial-unix-var-run-docker-sock-no-such-file-or-directory-after-upgrading-to-lxc
    
     How to expose Docker daemon over TCP
     https://serverfault.com/questions/843296/how-do-i-expose-the-docker-api-over-tcp
     
     https://serverfault.com/questions/884524/docker-daemon-config-opening-ports-for-dockerd

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

[Terraform PipeLine](https://medium.com/@timhberry/terraform-pipelines-in-jenkins-47267129ff06)

[GCR in Jenkins](https://itnext.io/setup-jenkins-with-google-container-registry-2f8d39aaa275)

[GCR in Jenkins](https://medium.com/google-cloud/how-to-push-docker-image-to-google-container-registry-gcr-through-jenkins-job-52b9d5ce9f7f)

[Kubectl deployment](https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer)

[Istio Multi Burst](https://codelabs.developers.google.com/codelabs/istio-multi-burst/?source=post_page---------------------------#2)

[Config Maps](https://dzone.com/articles/configuring-spring-boot-on-kubernetes-with-configm)

[Kubernetes NodePort vs LoadBalancer vs Ingress? When should I use what? - Sandeep Dinesh](https://medium.com/google-cloud/kubernetes-nodeport-vs-loadbalancer-vs-ingress-when-should-i-use-what-922f010849e0)

[Ahmet Alp Balkan Blogs](https://medium.com/@ahmetb)

[Kubernetes: troubleshooting ingress and services traffic flows](https://medium.com/@ManagedKube/kubernetes-troubleshooting-ingress-and-services-traffic-flows-547ea867b120)




# Jenkins 
[Install Jenkins X in GKE](https://jenkins-x.io/getting-started/jenkins-x-gke-install-with-bot/)

CICD  Kubernetes (https://www.linux.com/blog/learn/chapter/Intro-to-Kubernetes/2017/6/set-cicd-pipeline-jenkins-pod-kubernetes-part-2)

[Configuring docker for Jenkins](https://devopscube.com/jenkins-master-build-slaves-docker-container/)

[Configuring docker for Jenkins](https://medium.com/@elisegev/build-create-docker-images-continuously-with-jenkins-b64dc717e8f1)

[docker basic](https://docs.docker.com/articles/basics/)

[Jenkins Pipeline](https://www.youtube.com/watch?v=W-kCSO2YyVE)

[jenkins + docker docker image](https://github.com/shazChaudhry/docker-jenkins.git)
[jenkins + docker docker image 2](https://github.com/cognitiaclaeves/docker-jenkins2-dkr/blob/master/Dockerfile)

[Helm Install in Jenkins](https://github.com/camptocamp/jenkins-lib-helm/blob/master/src/com/camptocamp/Helm.groovy)

[Kubernetes Pipeline] (https://akomljen.com/set-up-a-jenkins-ci-cd-pipeline-with-kubernetes/)

[Google Cloud open image registry](https://console.cloud.google.com/gcr/images/cloud-solutions-images/GLOBAL)

[Docker global tool use](https://support.cloudbees.com/hc/en-us/articles/230922468-Pipeline-I-would-like-to-use-Docker-CLI-inside-of-a-Pipeline-job)

[Authenticating with Google Cloud Container Registry](https://cloud.google.com/container-registry/docs/advanced-authentication)


[Jenkins] (https://devopscube.com/jenkins-master-build-slaves-docker-container/)
