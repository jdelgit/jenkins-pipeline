pipeline {
    agent any
    stages {
        stage('HelloWorld') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
    }
}