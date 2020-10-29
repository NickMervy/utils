@ECHO OFF

set repo_name="%~1"
if %repo_name%=="" (
    ECHO Repo name required.
    GOTO BLANK
)

curl -X POST -H "Authorization: token %GIT_TOKEN%" https://api.github.com/user/repos -d "{\"name\":\"%repo_name%\"}"

:BLANK