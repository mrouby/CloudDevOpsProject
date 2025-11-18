@Library('shared-library') _

pipeline {
    agent any

    environment {
        IMAGE_NAME = "mrouby/ivolve-app:latest"
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        KUBE_SERVER = "http://localhost:8081"
    }

    stages {
        stage('Build Image') {
            steps {
                script { dockerPipeline.buildImage(IMAGE_NAME) }
            }
        }

        stage('Scan Image') {
            steps {
                script { dockerPipeline.scanImage(IMAGE_NAME) }
            }
        }

        stage('Push Image') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub', url: '') {
                    script { dockerPipeline.pushImage(IMAGE_NAME) }
                }
            }
        }

        stage('Delete Local Image') {
            steps {
                script { dockerPipeline.deleteLocalImage(IMAGE_NAME) }
            }
        }

        stage('Update Manifests') {
            steps {
                script { dockerPipeline.updateManifests(KUBE_SERVER) }
            }
        }

        stage('Push Manifests') {
            steps {
                script { dockerPipeline.pushManifests() }
            }
        }
    }
}
