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
            }
        }
        stage('Initialize') {
            steps {
                sh 'git clone https://github.com/jdelgit/terraform-modules.git'
                sh 'terraform -chdir=./test init --backend-config backend.conf'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform -chdir=./test plan -out test.plan'
            }
        }
    // stage('Apply plan') {
    //         sh 'terraform -chdir=./test apply test.plan --backend-config backend.conf'
    // }
    }
}
