#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/henris-app-files/master"


printf '\n\e[1;34mSetup Nuxt Files\e[0m' 

# Assets
mkdir assets 
mkdir assets/fonts

curl -o assets/fonts/README.md -l ${URL}/assets/fonts/README.md

printf '\n\Assets \e[1;34mcreated!\e[0m' 

# Components
mkdir components 
mkdir components/layout

curl -o components/README.md -l ${URL}/components/README.md
curl -o components/intro.vue -l ${URL}/components/intro.vue
curl -o components/layout/header.vue -l ${URL}/components/layout/header.vue
curl -o components/layout/footer.vue -l ${URL}/components/layout/footer.vue
curl -o components/layout/navigation.vue -l ${URL}/components/layout/navigation.vue

printf '\n\Scripts \e[1;34mcreated!\e[0m' 


# Config
mkdir config 

curl -o config/dev.sh -l ${URL}/config/dev.sh
curl -o config/local.sh -l ${URL}/config/local.sh
curl -o config/production.sh -l ${URL}/config/production.sh
curl -o config/staging.sh -l ${URL}/config/staging.sh

printf '\n\Config \e[1;34mcreated!\e[0m' 

# Layouts
mkdir layouts 

curl -o layouts/README.md -l ${URL}/layouts/README.md
curl -o layouts/index.vue -l ${URL}/layouts/index.vue

printf '\n\Layouts \e[1;34mcreated!\e[0m' 

# Middleware
mkdir middleware 

curl -o middleware/README.md -l ${URL}/middleware/README.md

printf '\n\tMiddleware \e[1;34mcreated!\e[0m' 


# Pages
mkdir pages 

curl -o pages/README.md -l ${URL}/pages/README.md
curl -o pages/index.vue -l ${URL}/pages/index.vue

printf '\n\Pages \e[1;34mcreated!\e[0m' 

# Scripts
mkdir scripts 

curl -o scripts/dev.sh -l ${URL}/scripts/dev.sh
curl -o scripts/local.sh -l ${URL}/scripts/local.sh
curl -o scripts/production.sh -l ${URL}/scripts/production.sh
curl -o scripts/staging.sh -l ${URL}/scripts/staging.sh

printf '\n\Scripts \e[1;34mcreated!\e[0m' 


# Static
mkdir static 
mkdir static/images

curl -o static/README.md -l ${URL}/static/README.md
curl -o static/favicon.ico -l ${URL}/static/favicon.ico
curl -o static/icon.png -l ${URL}/static/icon.png
curl -o static/images/README.md -l ${URL}/static/images/README.md

printf '\n\Static \e[1;34mcreated!\e[0m' 


# Static
mkdir static 
mkdir static/images

curl -o static/README.md -l ${URL}/static/README.md
curl -o static/favicon.ico -l ${URL}/static/favicon.ico
curl -o static/icon.png -l ${URL}/static/icon.png
curl -o static/images/README.md -l ${URL}/static/images/README.md

printf '\n\Static \e[1;34mcreated!\e[0m' 


# Store
mkdir store 

curl -o store/README.md -l ${URL}/store/README.md

printf '\n\Store \e[1;34mcreated!\e[0m' 
