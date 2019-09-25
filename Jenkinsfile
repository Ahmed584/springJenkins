pipeline {
    
    agent {
        label 'docker'
        
    }
    tools {
        maven 'maven' 
    }
    stages {
        stage('clone'){
            steps {
                sh "rm -rf *"
                sh "git clone https://github.com/Ahmed584/springJenkins.git"
            }
        }
        stage('build'){
            steps {
                sh'''cd springJenkins
                 mvn clean package'''
            }
        }
        stage('build and push Image'){
            steps {
                sh'pwd'
                sh ' ls'
                sh 'docker container stop $(docker container ls -aq)'
            sh'''cd springJenkins
             ls
            docker build -t test-jenkins .
            docker run -p 7072:9001 -d test-jenkins'''
             sh 'docker ps'
             sh 'docker images'
          withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
            sh 'docker tag test-jenkins:latest akrout123/test-jenkins:$BUILD_NUMBER'
          sh 'docker push akrout123/test-jenkins:$BUILD_NUMBER'
        }
            }
        }
    }
}
