def label = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label, containers: [
 containerTemplate(name: 'git', image: 'alpine/git', ttyEnabled: true, command: 'cat'),
  containerTemplate(name: 'terrform', image: 'hashicorp/terraform', ttyEnabled: true, command: 'cat')
 
],
) {
  node(label) {
    SVC_ACCOUNT_KEY = credentials('terraform-auth')

    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds'
        sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/serviceaccount.json'
      }
    }

    stage('TF Plan') {
      steps {
        container('terraform') {
          sh 'terraform init'
          sh 'terraform plan -out myplan'
        }
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

    stage('TF Apply') {
      steps {
        container('terraform') {
          sh 'terraform apply -input=false myplan'
        }
      }
    }
