pipeline {
    agent any
    stages {
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
        //         sh 'terraform apply test.plan --backend-config backend.conf'
        // }
    }
}
