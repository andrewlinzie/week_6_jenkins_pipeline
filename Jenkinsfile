pipeline {
    agent any

    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub')
    DOCKER_IMAGE = 'andrewlinzie1/andrewlinzie-week6-jenkins-pipeline'   // <‑‑ exact repo name
}

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                sh '''
                    echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                    docker push $DOCKER_IMAGE
                '''
            }
        }
    }
}
