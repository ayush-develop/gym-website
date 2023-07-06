pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        // Install dependencies
        bat 'npm install'

        // Build React app
        bat 'npm run build'
      }
    }

    stage('Test') {
      steps {
        // Run tests
        bat 'npm run test'
      }
    }

    stage('Deploy') {
      steps {
        // Deploy to production server
        bat 'npm run deploy'
      }
    }
  }
}
