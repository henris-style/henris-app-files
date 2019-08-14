#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/henris-app-files/master"


printf '\n\e[1;34mSetup Nuxt Files\e[0m' 

# Assets
mkdir assets 
mkdir assets/fonts

curl -o assets/fonts/README.md -l ${URL}/assets/fonts/README.md --silent

printf '\n\tAssets \e[1;34mcreated!\e[0m' 

# Components
mkdir components 
mkdir components/layout

curl -o components/intro.vue -l ${URL}/components/intro.vue --silent
curl -o components/layout/header.vue -l ${URL}/components/layout/header.vue --silent
curl -o components/layout/footer.vue -l ${URL}/components/layout/footer.vue --silent
curl -o components/layout/navigation.vue -l ${URL}/components/layout/navigation.vue --silent
curl -o components/README.md -l ${URL}/components/README.md --silent

printf '\n\tScripts \e[1;34mcreated!\e[0m' 


# Config
mkdir config 

curl -o config/dev.sh -l ${URL}/config/dev.sh
curl -o config/local.sh -l ${URL}/config/local.sh
curl -o config/production.sh -l ${URL}/config/production.sh
curl -o config/staging.sh -l ${URL}/config/staging.sh
curl -o config/README.md -l ${URL}/config/README.md

printf '\n\tConfig \e[1;34mcreated!\e[0m' 

# Layouts
mkdir layouts 

curl -o layouts/index.vue -l ${URL}/layouts/index.vue
curl -o layouts/README.md -l ${URL}/layouts/README.md

printf '\n\tLayouts \e[1;34mcreated!\e[0m' 

# Middleware
mkdir middleware 

curl -o middleware/README.md -l ${URL}/middleware/README.md

printf '\n\tMiddleware \e[1;34mcreated!\e[0m' 


# Pages
mkdir pages 

curl -o pages/index.vue -l ${URL}/pages/index.vue
curl -o pages/README.md -l ${URL}/pages/README.md

printf '\n\tPages \e[1;34mcreated!\e[0m' 

# Scripts
mkdir scripts 

curl -o scripts/dev.sh -l ${URL}/scripts/dev.sh
curl -o scripts/local.sh -l ${URL}/scripts/local.sh
curl -o scripts/production.sh -l ${URL}/scripts/production.sh
curl -o scripts/staging.sh -l ${URL}/scripts/staging.sh
curl -o scripts/README.md -l ${URL}/scripts/README.md

printf '\n\Scripts \e[1;34mcreated!\e[0m' 


# Static
mkdir static 
mkdir static/images

curl -o static/README.md -l ${URL}/static/README.md
curl -o static/favicon.ico -l ${URL}/static/favicon.ico
curl -o static/icon.png -l ${URL}/static/icon.png
curl -o static/images/README.md -l ${URL}/static/images/README.md

printf '\n\tStatic \e[1;34mcreated!\e[0m' 


# Static
mkdir plugins 

curl -o plugins/README.md -l ${URL}/plugins/README.md

printf '\n\tPlugins \e[1;34mcreated!\e[0m' 


# Static
mkdir static 
mkdir static/images

curl -o static/README.md -l ${URL}/static/README.md
curl -o static/favicon.ico -l ${URL}/static/favicon.ico
curl -o static/icon.png -l ${URL}/static/icon.png
curl -o static/images/README.md -l ${URL}/static/images/README.md

printf '\n\tStatic \e[1;34mcreated!\e[0m' 


# Store
mkdir store 

curl -o store/README.md -l ${URL}/store/README.md

printf '\n\tStore \e[1;34mcreated!\e[0m' 

# Linters
curl -o .babelrc -l ${URL}/.babelrc
curl -o .eslintrc.js -l ${URL}/.eslintrc.js
curl -o .gitignore -l ${URL}/.gitignore
curl -o .prettierrc -l ${URL}/.prettierrc
curl -o nuxt.config.js -l ${URL}/nuxt.config.js
curl -o README.md -l ${URL}/README.md

printf '\n\tConfig files \e[1;34mcreated!\e[0m' 
