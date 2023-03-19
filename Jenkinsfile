pipeline {
    agent any

    stages {
        stage ('build war') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('build docker image') {
            steps {
                sh 'docker build -t hello-world .'
            }
        }
    }
}