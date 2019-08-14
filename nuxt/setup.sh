#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/henris-app-files/master"
TARGET="$@/"


printf '\n\t\e[1;34mSetup Nuxt Files\e[0m' 

# Assets
mkdir -p ${TARGET}assets/fonts

curl -o ${TARGET}assets/fonts/README.md -l ${URL}/assets/fonts/README.md --silent

printf '\n\tAssets \e[1;34mcreated!\e[0m' 

# Components
mkdir -p ${TARGET}components/layout

curl -o ${TARGET}components/intro.vue -l ${URL}/components/intro.vue --silent
curl -o ${TARGET}components/layout/header.vue -l ${URL}/components/layout/header.vue --silent
curl -o ${TARGET}components/layout/footer.vue -l ${URL}/components/layout/footer.vue --silent
curl -o ${TARGET}components/layout/navigation.vue -l ${URL}/components/layout/navigation.vue --silent
curl -o ${TARGET}components/README.md -l ${URL}/components/README.md --silent

printf '\n\tScripts \e[1;34mcreated!\e[0m' 


# Config
mkdir config 

curl -o ${TARGET}config/dev.sh -l ${URL}/config/dev.sh --silent
curl -o ${TARGET}config/local.sh -l ${URL}/config/local.sh --silent
curl -o ${TARGET}config/production.sh -l ${URL}/config/production.sh --silent
curl -o ${TARGET}config/staging.sh -l ${URL}/config/staging.sh --silent
curl -o ${TARGET}config/README.md -l ${URL}/config/README.md --silent

printf '\n\tConfig \e[1;34mcreated!\e[0m' 

# Layouts
mkdir ${TARGET}layouts 

curl -o ${TARGET}layouts/index.vue -l ${URL}/layouts/index.vue --silent
curl -o ${TARGET}layouts/README.md -l ${URL}/layouts/README.md --silent

printf '\n\tLayouts \e[1;34mcreated!\e[0m' 

# Middleware
mkdir ${TARGET}middleware 

curl -o ${TARGET}middleware/README.md -l ${URL}/middleware/README.md --silent

printf '\n\tMiddleware \e[1;34mcreated!\e[0m' 


# Pages
mkdir ${TARGET}pages 

curl -o pages/index.vue -l ${URL}/pages/index.vue --silent
curl -o pages/README.md -l ${URL}/pages/README.md --silent

printf '\n\tPages \e[1;34mcreated!\e[0m' 

# Scripts
mkdir ${TARGET}scripts 

curl -o scripts/dev.sh -l ${URL}/scripts/dev.sh --silent
curl -o scripts/local.sh -l ${URL}/scripts/local.sh --silent
curl -o scripts/production.sh -l ${URL}/scripts/production.sh --silent
curl -o scripts/staging.sh -l ${URL}/scripts/staging.sh --silent
curl -o scripts/README.md -l ${URL}/scripts/README.md --silent

printf '\n\Scripts \e[1;34mcreated!\e[0m' 


# Static
mkdir -p ${TARGET}static/images

curl -o ${TARGET}static/README.md -l ${URL}/static/README.md --silent
curl -o ${TARGET}static/favicon.ico -l ${URL}/static/favicon.ico --silent
curl -o ${TARGET}static/icon.png -l ${URL}/static/icon.png --silent
curl -o ${TARGET}static/images/README.md -l ${URL}/static/images/README.md --silent

printf '\n\tStatic \e[1;34mcreated!\e[0m' 


# Static
mkdir ${TARGET}plugins 

curl -o ${TARGET}plugins/README.md -l ${URL}/plugins/README.md --silent

printf '\n\tPlugins \e[1;34mcreated!\e[0m' 


# Static
mkdir -p ${TARGET}static/images

curl -o ${TARGET}static/README.md -l ${URL}/static/README.md --silent
curl -o ${TARGET}static/favicon.ico -l ${URL}/static/favicon.ico --silent
curl -o ${TARGET}static/icon.png -l ${URL}/static/icon.png --silent
curl -o ${TARGET}static/images/README.md -l ${URL}/static/images/README.md --silent

printf '\n\tStatic \e[1;34mcreated!\e[0m' 


# Store
mkdir ${TARGET}store 

curl -o ${TARGET}store/README.md -l ${URL}/store/README.md --silent

printf '\n\tStore \e[1;34mcreated!\e[0m' 

# Linters
curl -o ${TARGET}.babelrc -l ${URL}/.babelrc --silent
curl -o ${TARGET}.eslintrc.js -l ${URL}/.eslintrc.js --silent
curl -o ${TARGET}.gitignore -l ${URL}/.gitignore --silent
curl -o ${TARGET}.prettierrc -l ${URL}/.prettierrc --silent
curl -o ${TARGET}nuxt.config.js -l ${URL}/nuxt.config.js --silent
curl -o ${TARGET}README.md -l ${URL}/README.md --silent

printf '\n\tConfig files \e[1;34mcreated!\e[0m' 
