pipeline {
    agent any
    stages {
         stage('Build Docker Image') {
            steps {
                // Build the Docker image using a Dockerfile
                script {
                    env.IMAGE = docker.build('blog', '.')
                }
            }
        }
        stage('Deploy Docker Container') {
            steps {
                script {
                    def containerExists = sh(script: 'docker ps -aqf name=blog', returnStdout: true).trim()

                    if (containerExists) {
                        sh "docker stop blog"
                        sh "docker rm blog"
                    }

                    sh "docker run -d --name blog --network=app blog"
                }
            }
        }
    }
}