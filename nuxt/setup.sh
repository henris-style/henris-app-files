#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/henris-app-files/master/nuxt"
TARGET="$@/"


printf '\n  \e[1;34mSetup Nuxt Files\e[0m' 

# Assets
mkdir -p ${TARGET}assets/fonts

curl -o ${TARGET}assets/fonts/README.md -l ${URL}/assets/fonts/README.md --fail --silent --show-error

printf '\n  Assets \e[1;34mcreated!\e[0m' 

# Components
mkdir -p ${TARGET}components/layout

curl -o ${TARGET}components/intro.vue -l ${URL}/components/intro.vue --fail --silent --show-error
curl -o ${TARGET}components/layout/header.vue -l ${URL}/components/layout/header.vue --fail --silent --show-error
curl -o ${TARGET}components/layout/footer.vue -l ${URL}/components/layout/footer.vue --fail --silent --show-error
curl -o ${TARGET}components/layout/navigation.vue -l ${URL}/components/layout/navigation.vue --fail --silent --show-error
curl -o ${TARGET}components/README.md -l ${URL}/components/README.md --fail --silent --show-error

printf '\n  Components \e[1;34mcreated!\e[0m' 


# Config
mkdir ${TARGET}config 

curl -o ${TARGET}config/dev.js -l ${URL}/config/dev.js --fail --silent --show-error
curl -o ${TARGET}config/local.js -l ${URL}/config/local.js --fail --silent --show-error
curl -o ${TARGET}config/production.js -l ${URL}/config/production.js --fail --silent --show-error
curl -o ${TARGET}config/staging.js -l ${URL}/config/staging.js --fail --silent --show-error
curl -o ${TARGET}config/README.md -l ${URL}/config/README.md --fail --silent --show-error

printf '\n  Config \e[1;34mcreated!\e[0m' 

# Layouts
mkdir ${TARGET}layouts 

curl -o ${TARGET}layouts/index.vue -l ${URL}/layouts/index.vue --fail --silent --show-error
curl -o ${TARGET}layouts/README.md -l ${URL}/layouts/README.md --fail --silent --show-error

printf '\n  Layouts \e[1;34mcreated!\e[0m' 

# Middleware
mkdir ${TARGET}middleware 

curl -o ${TARGET}middleware/README.md -l ${URL}/middleware/README.md --fail --silent --show-error

printf '\n  Middleware \e[1;34mcreated!\e[0m' 


# Pages
mkdir ${TARGET}pages 

curl -o ${TARGET}pages/index.vue -l ${URL}/pages/index.vue --fail --silent --show-error
curl -o ${TARGET}pages/README.md -l ${URL}/pages/README.md --fail --silent --show-error

printf '\n  Pages \e[1;34mcreated!\e[0m' 

# Scripts
mkdir ${TARGET}scripts 

curl -o ${TARGET}scripts/dev.sh -l ${URL}/scripts/dev.sh --fail --silent --show-error
curl -o ${TARGET}scripts/local.sh -l ${URL}/scripts/local.sh --fail --silent --show-error
curl -o ${TARGET}scripts/production.sh -l ${URL}/scripts/production.sh --fail --silent --show-error
curl -o ${TARGET}scripts/staging.sh -l ${URL}/scripts/staging.sh --fail --silent --show-error
curl -o ${TARGET}scripts/README.md -l ${URL}/scripts/README.md --fail --silent --show-error

printf '\n  Scripts \e[1;34mcreated!\e[0m' 


# Static
mkdir -p ${TARGET}static/images

curl -o ${TARGET}static/README.md -l ${URL}/static/README.md --silent
curl -o ${TARGET}static/favicon.ico -l ${URL}/static/favicon.ico --silent
curl -o ${TARGET}static/icon.png -l ${URL}/static/icon.png --silent
curl -o ${TARGET}static/images/README.md -l ${URL}/static/images/README.md --silent

printf '\n  Static \e[1;34mcreated!\e[0m' 


# Plugins
mkdir ${TARGET}plugins 

curl -o ${TARGET}plugins/global.mixins.js -l ${URL}/plugins/global.mixins.js --fail --silent --show-error
curl -o ${TARGET}plugins/global.components.js -l ${URL}/plugins/global.components.js --fail --silent --show-error
curl -o ${TARGET}plugins/README.md -l ${URL}/plugins/README.md --fail --silent --show-error

printf '\n  Plugins \e[1;34mcreated!\e[0m' 

# Store
mkdir ${TARGET}store 

curl -o ${TARGET}store/README.md -l ${URL}/store/README.md --fail --silent --show-error

printf '\n  Store \e[1;34mcreated!\e[0m' 

# Linters
curl -o ${TARGET}.babelrc -l ${URL}/.babelrc --fail --silent --show-error
curl -o ${TARGET}.eslintrc.js -l ${URL}/.eslintrc.js --fail --silent --show-error
curl -o ${TARGET}.gitignore -l ${URL}/.gitignore --fail --silent --show-error
curl -o ${TARGET}.prettierrc -l ${URL}/.prettierrc --fail --silent --show-error
curl -o ${TARGET}nuxt.config.js -l ${URL}/nuxt.config.js --fail --silent --show-error
curl -o ${TARGET}README.md -l ${URL}/README.md --fail --silent --show-error

printf '\n  Config files \e[1;34mcreated!\e[0m\n\n' 
