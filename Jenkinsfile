pipeline {
    environment {
        // See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret#configuring-the-service-principal-in-terraform
        // See https://plugins.jenkins.io/azure-credentials/
        // Environment variables required for Azure Terraform
        // ARM_CLIENT_ID
        // ARM_CLIENT_SECRET
        // ARM_TENANT_ID
        ARM = credentials('azure-dev-cred')
    }
    agent any
    stages {
        stage('Initialize') {
            steps {
                sh 'git clone https://github.com/jdelgit/terraform-modules.git'
                sh 'terraform -chdir=./test init --backend-config backend.conf'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform -chdir=./test plan -out test.plan -destroy'
            }
        }
        stage('Apply plan') {
                steps {
                    sh 'terraform -chdir=./test apply test.plan'
                }
        }
    }
}
