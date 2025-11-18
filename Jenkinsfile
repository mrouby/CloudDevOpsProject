@Library('shared-library') _

pipeline {
    agent { label 'ec2-agent-1' }

    environment {
        IMAGE_NAME = "mrouby/ivolve-app:latest"
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }

    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerPipeline.buildImage(IMAGE_NAME)
                }
            }
        }

        // Scan Image stage is removed

        stage('Push Image') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub', url: '') {
                    script {
                        dockerPipeline.pushImage(IMAGE_NAME)
                    }
                }
            }
        }

        stage('Delete Local Image') {
            steps {
                script {
                    dockerPipeline.deleteLocalImage(IMAGE_NAME)
                }
            }
        }

        stage('Update Manifests') {
            steps {
                script {
                    // kubectl pointing to port 8081
                    dockerPipeline.updateManifests = {
                        echo "Applying manifests to Kubernetes on port 8081..."
                        sh "kubectl --server=http://localhost:8081 apply -f k8s/"
                    }
                    dockerPipeline.updateManifests()
                }
            }
        }

        stage('Push Manifests') {
            steps {
                script {
                    dockerPipeline.pushManifests()
                }
            }
        }
    }
}
