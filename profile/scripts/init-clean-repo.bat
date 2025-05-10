@echo off
REM Usage: init-clean-repo.bat <repo-name>
SET REPO_NAME=%1

IF "%REPO_NAME%"=="" (
    ECHO Usage: %0 ^<repo-name^>
    EXIT /B 1
)

mkdir %REPO_NAME%\src
mkdir %REPO_NAME%\docs
mkdir %REPO_NAME%\.github\ISSUE_TEMPLATE

type nul > %REPO_NAME%\README.md
type nul > %REPO_NAME%\.gitignore
type nul > %REPO_NAME%\LICENSE
type nul > %REPO_NAME%\.github\PULL_REQUEST_TEMPLATE.md
type nul > %REPO_NAME%\.github\ISSUE_TEMPLATE\bug_report.yml
type nul > %REPO_NAME%\.github\ISSUE_TEMPLATE\feature_request.yml
type nul > %REPO_NAME%\.github\ISSUE_TEMPLATE\docs_update.yml
type nul > %REPO_NAME%\.github\CODE_OF_CONDUCT.md

echo ✅ Initialized clean repository structure in .\%REPO_NAME%