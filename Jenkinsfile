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

        // stage('Scan Image') {
        //     steps {
        //         script {
        //             dockerPipeline.scanImage(IMAGE_NAME)
        //         }
        //     }
        // }

        stage('Push Image') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub-id', url: '') {
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
