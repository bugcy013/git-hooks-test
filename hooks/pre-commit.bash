echo "Running pre-commit hook"

FILES_LIST=$(git diff --cached --name-only --diff-filter=ACM "*.sh" | tr '\n' ' ')

./hooks/run-tests.bash

# Add back the modified files to staging

echo ${FILES_LIST}| xargs git add 
