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
       steps
       {
          checkout scm
       }
     }
     stage('Build')
     {
       steps
       {
        mvn clean install
       }
     }
   }
}
