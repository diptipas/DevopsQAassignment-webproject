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
        bat "mvn clean install"
       }
     }
    stage('Sonar')
    {
      steps
      {
        echo "Sonar analysis"
        withSonarQubeEnv("localSonar")
        {
          bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar"
        }
      } 
    }
   }
}
