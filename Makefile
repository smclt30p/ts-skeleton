# This invokes tsc on the main app.ts file and
# compresses all files using compress.sh


# Compiler entry point
INITIAL=app.ts
# The tsc compiler is smart, in which
# it will pull and compile files he needs
# so there is o need to compile each file
# by hand, its sufficient to provide the entry
# file in order to compile all files

# The destionation folder
DEST_DIR=dist
# This is the destination folder in which
# all the src files will be copied over

do:
	mkdir -p build
	tsc --outDir build/. src/ts/$(INITIAL)
	sh compress.sh

clean:
	rm -rf build
	rm src/build.js

dist:
	make
	mv src/ts .
	mkdir -p $(DEST_DIR)
	cp -R src/* $(DEST_DIR)
	mv ts src/.
