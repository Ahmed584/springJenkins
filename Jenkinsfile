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
        stage('build Image'){
            steps {
                sh'pwd'
                sh ' ls'
                sh 'docker container stop $(docker container ls -aq)'
            sh'''cd springJenkins
             ls
            docker build -t test-jenkins .
            docker run -p 7072:9001 -d test-jenkins'''
             sh 'docker ps'
            }
           
        }
    }
}