node{
  stage('checkout'){
    git 'https://github.com/FrancoBobadilla/payrollServer'
  }
  stage('compile'){
    sh 'mvn package'
  }
}
