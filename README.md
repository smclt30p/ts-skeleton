# TypeScript Skeleton Project

This project is aimed to provide a simple GNU Make build system adapter for TypeScript projects.

The structure after `make dist`

```
.
├── build
│   └── app.js
├── compress.sh
├── dist
│   ├── build.js
│   └── index.html
├── Makefile
├── README.md
└── src
    ├── build.js
    ├── index.html
    └── ts
        └── app.ts

4 directories, 9 files
```

* `build` - Folder for compiled JavaScript files from TypeScript from `src/ts/*.ts`
* `compress.sh` - The script that takes all files from `build/*.js`, compresses and mangles them, and generates `src/build.js`
* `dist` - The distribuion folder, here is where release-ready files are placed, they are copied from `src/*.` after `build.js` has been compiled
* `src/build.js` - The main JavaScript file that will be included into the website, its generated by `comress.sh` from the sources in `build/*.js`

## How to use this?

#### To develop

* Edit files in `src/*`
* When done with editing, run `make ` --> `src/build.js` is generated
* Point a HTTP server of choice to `src/` and open the `index.html` like `http://localhost:8080/index.html`
* The browser loads `index.html` and the compiled `build.js`
* Test if the changes are working
* Rinse and repeat

### To deploy

* Run `make dist`
* Copy files from `dist/*` onto the production server or WAR package or something else

### To use with some other project (ex. NetBeans Web Application)
* Edit Makefile --> Change `DEST_DIR` to point to the static part of the projetc, for ex. `DEST_DIR=/cygdrive/c/Users/gala/Documents/NetBeansProjects/WebApplication1/web`
* Test code with `make` in the browser, and when ready to push to the NetBeans project, run `make dist`
`

## Dependencies
* POSIX-Compatible operating system (Linux, Cygwin)
* GNU Make
* Node.js
* npm
* uglifyjs --> `npm install -g uglifyjs`
* TypeScript (tsc)