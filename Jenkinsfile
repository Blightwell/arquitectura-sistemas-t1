pipeline{
    agent any
    stages{
        stage('Pull Git'){
            steps{
                chmod 777 sh './pullgit.sh'
            }
        }
        stage('Build Dockerfile'){
            steps{
                chmod 777 sh './dockerbuild.sh'
            }
        }
        stage('Push Heroku'){
            steps{
                chmod 777 sh './heroku.sh'
            }
        }
    }
}
