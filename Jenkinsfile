// @Library('myshared-library') _
// deployAxualTerraform(cloud_credentials_id = 'azure-dev-cred')
pipeline {
    agent any
    stages {
        stage('Test Python script') {
            sh 'python test.py'
        }
    }
}
