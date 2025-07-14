pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = credentials('dockerhub') // Use the ID you created in Jenkins
        IMAGE_NAME = "andrewlinzie/week_6_app"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }

        stage('Login to Docker Hub') {
            steps {
                script {
                    sh "echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin"
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }
    }
}
