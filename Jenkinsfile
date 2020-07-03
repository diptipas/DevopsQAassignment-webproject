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
    stage('Sonar Analysis')
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
    stage('Upload to Artifactory')
    {
      steps
      {
        rtMavenDeployer (
                    id: 'deployer',
                    serverId: '123456789@artifactory',
                    releaseRepo: 'dipti_devopsAssignment',
                    snapshotRepo: 'dipti_devopsAssignment'
                )
                rtMavenRun (
                    pom: 'pom.xml',
                    goals: 'clean install',
                    deployerId: 'deployer',
                )
                rtPublishBuildInfo (
                    serverId: '123456789@artifactory',
                )
        }
     }
    stage('Docker Build Image')
     {
       steps
       {
        docker build -t devopsqaassignment:1
       }
     }
    
   }
  
}
