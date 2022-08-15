pipeline { 
    agent any  

    tools { 
        maven 'maven 3.8.6' 
        jdk 'jdk11' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage ('Test'){
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
        stage ('Deploy'){
            steps {
                deploy adapters: [tomcat9(credentialsId: 'admin', path: '', url: 'http://50.19.187.134:8080/')], contextPath: '', war: '**/*.war ' 
            }
        }
    }
}