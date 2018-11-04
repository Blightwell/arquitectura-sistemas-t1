pipeline{
    agent any
    stages{
        stage('Pull Git'){
            steps{
                sh './pullgit.sh'
            }
        }
        stage('Build Dockerfile'){
            steps{
                sh './dockerbuild.sh'
            }
        }
        stage('Push Heroku'){
            steps{
                sh './heroku.sh'
            }
        }
    }
}
