pipeline
{
  agent any
  tools
  {
   maven 'maven'
  }
  stages
  {
    stage('Checkout')
     {
        checkout scm
     }
     stage('Build')
     {
        mvn clean install
     }
    }
}
