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
git clone https://github.com/CJN-Team/pet-project-payment-gateway.git && \
git clone https://github.com/CJN-Team/pet-project-adoption-form.git && \
git clone https://github.com/CJN-Team/pet-project-chat.git && \
git clone https://github.com/CJN-Team/pet-project-cart.git && \
git clone https://github.com/CJN-Team/pet-project-match-dashboard.git && \
git clone https://github.com/CJN-Team/pet-project-store.git && \
git clone https://github.com/CJN-Team/pet-project-pet-services.git && \
git clone https://github.com/CJN-Team/pet-project-configuration.git && \
git clone https://github.com/CJN-Team/pet-project-profile.git && \
git clone https://github.com/CJN-Team/pet-project-pet-finder.git && \
git clone https://github.com/CJN-Team/pet-project-auth.git && \

# Api Gateway
git clone https://github.com/CJN-Team/pet-project-api-gateway.git
