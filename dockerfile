
from node:18-alpine as frontend
workdir /app/
copy frontend/ /app/frontend/
copy backend/ /app/backend/
workdir /app/frontend/ 
run npm install
run npm run build

# stage 2 
from node:18-alpine as backend
workdir /backend/
copy backend/ .
run npm run build
#stage 3

from node:18-alpine
workdir /app/
copy --from=frontend /app/frontend/dist/ /app/frontend/dist/
copy --from=backend /backend/dist/ /app/backend/dist/
copy --from=backend /backend/package.json /app/backend/package.json
workdir /app/backend/
run  npm install --omit=dev
cmd ["node","dist/index.js"]




