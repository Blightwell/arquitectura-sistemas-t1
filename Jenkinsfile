pipeline{
    agent any
    stages{
        stage('Pull Git'){
            sh chmod 777 './pullgit.sh'

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
