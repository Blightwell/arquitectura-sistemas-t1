pipeline{
    agent any
    stages{
        stage('Pull Git (Pull de repositorio Github)'){
            steps{
                sh 'chmod 777 ./gitpull.sh'
            }
        }
        stage('docker-compose build'){
            steps{
                sh 'chmod 777 ./dockercompose.sh'
            }
        }
        stage('Push Git (Push de repositorio Github)'){
            steps{
                sh 'chmod 777 ./gitpush.sh'
            }
        }
        stage('Push Heroku (Deployment de app a Heroku'){
            steps{
                sh 'chmod 777 ./heroku.sh'
            }
        }
    }
}
