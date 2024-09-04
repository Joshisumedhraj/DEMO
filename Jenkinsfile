pipeline {
    agent any

    stages {
        // stage('Checkout') {
        //     steps {
        //         git url: 'https://github.com/Joshisumedhraj/BloqWeb-demo.git', branch: 'main'
        //     }
        // }

      
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
                sh 'newman run  /newman/reports/NewCollection.json -r cli,htmlextra  --reporter-htmlextra-export /newman/reports/'
            }
        }
        
        // stage('Generate Report') {
        //     steps {
        //         sh '''
        //             mkdir -p $JENKINS_HOME/workspace/$JOB_BASE_NAME/htmlreports/Bloqweb_20HTML_20Report
        //             echo "<html><body><h1>Report</h1></body></html>" > $JENKINS_HOME/workspace/$JOB_BASE_NAME/htmlreports/Bloqweb_20HTML_20Report/index.html

        //         '''
        //     }
        // }
    }

    //post {
        // success {
        //     publishHTML(target: [
        //         reportName: 'My Report',
        //         reportDir: 'htmlreports/Bloqweb_20HTML_20Report',
        //         reportFiles: 'index.html',
        //         keepAll: true,
        //         alwaysLinkToLastBuild: true,
        //         allowMissing: false
        //     ])
        // }
    //}

}
