pipeline {
    environment {
        MY_CRED = credentials('azure-dev-cred')
    }
    agent any
    stages {
        stage('Azure login') {
            steps {
                sh 'az version'
                sh 'az login --service-principal -u $MY_CRED_CLIENT_ID -p $MY_CRED_CLIENT_SECRET -t $MY_CRED_TENANT_ID'
                sh 'az account show'
                sh 'export AZURE_CLIENT_ID=$(MY_CRED_CLIENT_ID)'
                sh 'export AZURE_CLIENT_SECRET=$(MY_CRED_CLIENT_SECRET)'
                sh 'export AZURE_TENANT_ID=$(MY_CRED_TENANT_ID)'
                sh 'export AZURE_SUBSCRIPTION_ID=$(MY_CRED_SUBSCRIPTION_ID)'
            }
        }
        stage('Initialize') {
            steps {
                sh 'git clone https://github.com/jdelgit/terraform-modules.git'
                sh 'ls -la'
                sh 'terraform -chdir=./test init --backend-config backend.conf'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan -chdir=./test --backend-config backend.conf -out test.plan'
            }
        }
    // stage('Apply plan') {
    //         sh 'terraform -chdir=./test apply test.plan --backend-config backend.conf'
    // }
    }
}
