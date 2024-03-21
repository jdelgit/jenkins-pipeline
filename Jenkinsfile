pipeline {
    environment {
        ARM = credentials('azure-dev-cred')
    }
    agent any
    stages {
        stage('Azure login') {
            steps {
                sh 'az version'
                sh 'az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET -t $ARM_TENANT_ID'
                sh 'az account show'
                // sh 'echo $ARM_CLIENT_ID'
            }
        }
        stage('Initialize') {
            steps {
                sh 'git clone https://github.com/jdelgit/terraform-modules.git'
                sh 'ls -la'
                sh 'echo $ARM_CLIENT_ID'

                // sh 'export AZURE_CLIENT_SECRET=$(ARM_CLIENT_SECRET)'
                // sh 'export AZURE_TENANT_ID=$(ARM_TENANT_ID)'
                // sh 'export AZURE_SUBSCRIPTION_ID=$(ARM_SUBSCRIPTION_ID)'
                // sh 'terraform -chdir=./test init --backend-config backend.conf'
            }
        }
        // stage('Plan') {
        //     steps {
        //         sh 'terraform plan -chdir=./test --backend-config backend.conf -out test.plan'
        //     }
        // }
    // stage('Apply plan') {
    //         sh 'terraform -chdir=./test apply test.plan --backend-config backend.conf'
    // }
    }
}
