# Stage 1: Build stage
FROM node:20-alpine AS build
WORKDIR /app
COPY backend/package*.json ./
RUN npm install --only=production
COPY backend/. .

# Stage 2: Runtime stage
FROM node:20-alpine
WORKDIR /app
COPY --from=build /app ./
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]
