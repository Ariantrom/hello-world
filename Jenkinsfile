pipeline {
    agent any

    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }

    stages {
        stage ('build war') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('build docker image') {
            steps {
                sh 'docker build -t hello-world . && docker tag hello-world:latest ariantrom/hello-world:latest'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage ('docker push image') {
            steps {
                sh 'docker push ariantrom/hello-world'
            }
        }
        stage ('deploy') {
            steps {
                sh 'kubectl create ns test-hello & kubectl -n test-hello apply -f kuber/deployment.yaml -f kuber/ingress.yaml -f kuber/service.yaml'
            }
        }
    }
}
