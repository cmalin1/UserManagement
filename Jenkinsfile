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
        stage ('Deploy-Dev-Infrastructure') {
            steps {
                sh """
                    aws cloudformation deploy --stack-name user-management-vpc --template-file ./infrastructure/vpc.yaml --region us-east-1 --no-fail-on-empty-changeset

                    aws cloudformation deploy --stack-name user-management-security --template-file ./infrastructure/security.yaml --capabilities CAPABILITY_NAMED_IAM --region us-east-1 --no-fail-on-empty-changeset

                    aws cloudformation deploy --stack-name user-management-web-dev --template-file ./infrastructure/webserver.yaml --parameter-overrides file://infrastructure/webserver-param-dev.json --region us-east-1 --no-fail-on-empty-changeset
                    
                    aws cloudformation deploy --stack-name user-management-db-dev --template-file ./infrastructure/db.yaml --parameter-overrides file://infrastructure/db-param-dev.json --region us-east-1 --no-fail-on-empty-changeset
                """
            }
        }
        stage ('Deploy-Dev-App'){
            steps {
                deploy adapters: [tomcat9(credentialsId: 'admin', path: '', url: 'http://34.233.82.92:8080/')], contextPath: '', war: '**/*.war ' 
            }
        }
    }
        stage ('Deploy-Staing-Infrastructure') {
            steps {
                sh """
                    aws cloudformation deploy --stack-name user-management-vpc --template-file ./infrastructure/vpc.yaml --region us-east-1 --no-fail-on-empty-changeset

                    aws cloudformation deploy --stack-name user-management-security --template-file ./infrastructure/security.yaml --capabilities CAPABILITY_NAMED_IAM --region us-east-1 --no-fail-on-empty-changeset

                    aws cloudformation deploy --stack-name user-management-web --template-file ./infrastructure/webserver.yaml --region us-east-1 --no-fail-on-empty-changeset
                    
                    aws cloudformation deploy --stack-name user-management-db --template-file ./infrastructure/db.yaml --region us-east-1 --no-fail-on-empty-changeset
                """
            }
        }
        stage ('Deploy-Staging-App'){
            steps {
                deploy adapters: [tomcat9(credentialsId: 'admin', path: '', url: 'http://34.233.82.92:8080/')], contextPath: '', war: '**/*.war ' 
            }
        }
    }
}