@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Setting up GitHub credentials
SET GITHUB_TOKEN=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
SET GITHUB_USER=lingaphjile
SET REPO_NAME=collectionTest

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
