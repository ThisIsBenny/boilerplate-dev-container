if [ -f "package.json" ]; then
    if [ -f "package-lock.json" ] || [ -f "npm-shrinkwrap.json" ]; then
        echo "Running npm ci"
        npm ci
    else
        echo "No lockfile found; running npm install instead"
        npm install
    fi
else
    echo "No package.json found. Skipping."
fi