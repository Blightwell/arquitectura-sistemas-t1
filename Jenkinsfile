pipeline{
    agent any
    stages{
        stage('Pull de Repositorio Git'){
            steps{
                sh 'chmod 777 ./gitpull.sh'
            }
        }
        stage('Docker Build'){
            steps{
                sh 'chmod 777 ./dockercompose.sh'
            }
        }
        stage('Push de Repositorio Git'){
            steps{
                sh 'chmod 777 ./gitpush.sh'
            }
        }
        stage('Push Heroku'){
            steps{
                sh 'chmod 777 ./heroku.sh'
            }
        }
    }
}
