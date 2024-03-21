pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps {
                echo 'Merge my branch in 2 repos, this is my first commit'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform --version'
            }
        }
    }
}
