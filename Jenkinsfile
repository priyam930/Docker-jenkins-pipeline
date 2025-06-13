pipeline {
    agent any

    environment {
        REGISTRY = 'localhost:5000'
        IMAGE_NAME = 'myapp'
        TAG = 'v1'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/priyam930/Docker-Jenkins-pipeline.git'

            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${REGISTRY}/${IMAGE_NAME}:${TAG} .'
            }
        }

        stage('Push Image to Local Registry') {
            steps {
                sh 'docker push ${REGISTRY}/${IMAGE_NAME}:${TAG}'
            }
        }
    }
}
