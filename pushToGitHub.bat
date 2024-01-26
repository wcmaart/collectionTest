@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Setting up GitHub credentials
SET GITHUB_TOKEN=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
SET GITHUB_USER=wcma/linguaphile
SET REPO_NAME=wcmaart/collectionTest

REM Navigating to your local repository folder
CD C:\Users\Public\feeds2\collection

REM Configuring Git for the push
git config --local credential.helper store

REM Pushing to GitHub
echo !GITHUB_USER!:!GITHUB_TOKEN! | git credential-manager store
git add .
git commit -m "Automated commit"
git push https://%GITHUB_USER%:%GITHUB_TOKEN%@github.com/%GITHUB_USER%/%REPO_NAME%.git

echo Push completed
pause
