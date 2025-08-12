#!/bin/bash

# Clean previous build
rm -rf dist

# Build the client
cd client
npm run build

# Move build files to root dist folder
cd ..
mkdir -p dist
cp -r client/dist/* dist/

echo "Build complete! Files are in the dist/ folder."
echo "Ready for GitHub Pages deployment." 