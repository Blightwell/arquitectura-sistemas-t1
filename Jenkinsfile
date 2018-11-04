pipeline{
    agent any
    stages{
        stage('Pull Git'){
            steps{
                sh 'chmod 777 ./pullgit.sh'
            }
        }
        stage('Build Dockerfile'){
            steps{
                sh 'chmod 777 ./dockerbuild.sh'
            }
        }
        stage('Push Heroku'){
            steps{
                sh 'chmod 777 ./heroku.sh'
            }
        }
    }
}
