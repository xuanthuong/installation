1. On Mac

# Runner
`sudo curl --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-darwin-amd64`

# Multi-runner
`sudo curl --output /usr/local/bin/gitlab-runner https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/v1.11.1/binaries/gitlab-ci-multi-runner-darwin-amd64`

`sudo chmod +x /usr/local/bin/gitlab-runner`

`gitlab-runner install`

`gitlab-runner start`

`gitlab-runner register` -> nếu dùng sudo thì phải chú ý option --user, nếu không thì không chạy được


2. Reference
http://blog.appconus.com/2016/12/20/continuous-integration-ci-deployment-cd-voi-gitlab-ki-nguyen-moi-cho-cicd/
https://gitlab.com/gitlab-org/gitlab-runner/blob/master/docs/commands/README.md