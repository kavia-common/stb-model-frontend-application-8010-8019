#!/bin/bash
cd /home/kavia/workspace/code-generation/stb-model-frontend-application-8010-8019/stb_models_frontend_app
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

