def call(String branchName) {
    if (branchName == 'main') {
        sh 'echo Deploying to production...'
    } else {
        sh 'echo Deploying to staging...'
    }
}

return this
