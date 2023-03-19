pipeline {
    agent any

    stages {
        stage ('git clone') {
            steps {
                sh 'git clone https://github.com/Ariantrom/hello-world.git'
            }
        }
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