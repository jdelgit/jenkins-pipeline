// @Library('myshared-library') _
// deployAxualTerraform(cloud_credentials_id = 'azure-dev-cred')
pipeline {
    agent any
    stages {
        stage('Test Python script') {
            steps {
                sh 'python3 test.py'
                echo "Moving to the next line"
            }
        }
        stage ('Continuation') {
            steps {
                echo "Made it to the next statge"
            }
        }
    }
}
