# This script compresses all the JavaScript files in build/. 
# into a single file to be included into the website.

rm build.js &> /dev/null
cd build
uglifyjs --compress --mangle --output ../src/build.js $(for file in *.js; do echo $file; done)
