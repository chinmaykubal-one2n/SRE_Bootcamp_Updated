# Stage 1: Build
FROM node:lts-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod
COPY . .

# Stage 2: Production
FROM node:lts-alpine
WORKDIR /app
COPY --from=builder /app /app
RUN npm prune --production
ENV NODE_ENV=production
EXPOSE 3000
CMD ["sh", "-c", "npm run migrate && npm start"]


 