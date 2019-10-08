node{
  def mvnHome
  stage('preparation'){
    git 'https://github.com/FrancoBobadilla/payrollServer'
    mvnHome = tool 'M3'
  }
  stage('compile'){
    withEnv(["MVN_HOME=$mvnHome"]) {
      if (isUnix()) {
        sh '"$MVN_HOME/bin/mvn" clean package'
      } else {
        bat(/"%MVN_HOME%\bin\mvn" clean package/)
      }
    }  
  }
}
