pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps {
                sh 'git clone https://github.com/jdelgit/terraform-modules.git'
                sh 'ls -la'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform -chdir=./test init --backend-config backend.conf'
            }
        }
    }
}
