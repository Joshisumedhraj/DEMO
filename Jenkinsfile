pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Joshisumedhraj/DEMO.git', branch: 'main'
            }
        }

        // uncomment if you need to install dependencies
        // stage('Install Dependencies') {
        //     steps {
        //         sh '''
        //         npm install -g uuid@latest
        //         npm install har-validator
        //         npm install -g newman newman-reporter-htmlextra
        //         newman-reporter-htmlextra -v
        //         '''
        //     }
        // }
        
        

        stage('Run Postman Collection') {
            steps {
                sh 'newman run NewDemoAPIs.postman_collection_(1).json -r cli,htmlextra  --reporter-htmlextra-export $jenkins_home/newman/DEMO/html-report/report2.html'
            }
         }
        // stage('Generate Report') {
        //     steps {
        //         sh '''
        //             mkdir -p $PARAG_HOME/workspace/$JOB_BASE_NAME/htmlreports/Bloqweb_20HTML_20Report
        //             echo "<html><body><h1>Report</h1></body></html>" > $jenkins_home/workspace/$JOB_BASE_NAME/DEMO/index.html

        //         '''
        //     }
        // }

        // stages {
        stage ('Publish Report'){
        // corrected syntax for publishing the HTML report
            steps {
           publishHTML(target: [
                  alwaysLinkToLastBuild: true,
                  keepAll: true,
                  reportDir: '$jenkins_home/newman/reports/html-report/',
                  reportFiles: 'report2.html',
                  keepAll: true]
                )
            }

        }
    }
}

