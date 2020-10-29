@ECHO OFF

set repo_name="%~1"
if %repo_name%=="" (
    ECHO Repo name required.
    GOTO BLANK
)

curl -X DELETE -H "Authorization: token %GIT_TOKEN%" https://api.github.com/repos/%GIT_USERNAME%/%repo_name%

:BLANK