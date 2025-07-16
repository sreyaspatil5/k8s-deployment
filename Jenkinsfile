@Library("shared") _

pipeline {
    agent { label "k8s" }

    environment {
        FRONTEND_IMAGE = "spquantum/frontend"
        BACKEND_IMAGE  = "spquantum/backend"
        IMAGE_TAG      = "q1"
    }

    stages {
        stage("Hello") {
            steps {
                script {
                    hello()
                }
            }
        }

        stage("Clone Code") {
            steps {
                script {
                    clone("https://github.com/sreyaspatil5/Kubernetes-three-tier-deployment.git", "main")
                }
            }
        }

        stage("Setup Docker & Compose") {
            steps {
                sh "chmod +x scripts/docker-setup.sh"
                sh "scripts/docker-setup.sh"
            }
        }

        stage("Build Images") {
            steps {
                script {
                    dockerBuild(imageName: env.FRONTEND_IMAGE, imageTag: env.IMAGE_TAG, context: 'frontend')
                    dockerBuild(imageName: env.BACKEND_IMAGE, imageTag: env.IMAGE_TAG, context: 'backend')
                }
            }
        }

        stage("Push To DockerHub") {
            steps {
                script {
                    dockerPush(imageName: env.FRONTEND_IMAGE, imageTag: env.IMAGE_TAG)
                    dockerPush(imageName: env.BACKEND_IMAGE, imageTag: env.IMAGE_TAG)
                }
            }
        }

                stage("Deploy Application") {
            steps {
                echo "Deploying application using Kubernetes manifests"
                sh '''
                kubectl delete -f k8s/
                sleep 3
                kubectl apply -f k8s/
                '''
            }
        }
    }
}
