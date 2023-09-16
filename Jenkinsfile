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
                    sh "docker stop blog"
                    sh "docker rm blog"
                    sh "docker run -d --name blog --mount source=/usr/share/nginx/html/quasar, target=/usr/share/nginx/html/quasar --network=nginx_infra blog"
                }
            }
        }
    }
}