def label = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label, containers: [
  containerTemplate(name: 'terraform', image: 'hashicorp/terraform', ttyEnabled: true, command: 'cat')
],
) {
  node(label) {
    environment {
    def SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }

    stage('Checkout') {

    //   container('git'){
        checkout scm
        sh 'mkdir -p ./creds'
      withCredentials([string(credentialsId: 'terraform-auth', variable: 'TOKEN')]) {
        sh '''
          set +x
          echo "$SVC_ACCOUNT_KEY" | base64 -d > ./creds/serviceaccount.json
        '''
      }
        //sh 'echo "$SVC_ACCOUNT_KEY" | base64 -d > ./creds/serviceaccount.json'
        sh 'cat ./creds/serviceaccount.json'
    //   }

    }

    stage('TF Plan') {

        container('terraform') {
          sh 'terraform init'
          sh 'terraform plan -out myplan /gke-demo'
        
    
    }

    stage('Approval') {

        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }

    }

    stage('TF Apply') {

        container('terraform') {
          sh 'terraform apply /gke-demo -input=false myplan'
        }

    }
  }
}
}
