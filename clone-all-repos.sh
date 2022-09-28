#!/usr/bin/env bash

# Clone all repos
cd ..

# Frontend
mkdir frontend
cd frontend && git clone https://github.com/CJN-Team/pet-project-ui.git && \
cd ..
# Backend
mkdir backend
cd backend || exit
git clone https://github.com/CJN-Team/pet-project-chat.git && \
git clone https://github.com/CJN-Team/pet-project-profile.git && \
git clone https://github.com/CJN-Team/pet-project-pet-finder.git && \

# Api Gateway
git clone https://github.com/CJN-Team/pet-project-api-gateway.git
