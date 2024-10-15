# Stage 1: Build
FROM node:lts-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod
COPY . .

# Stage 2: Production
FROM alpine:latest
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY --from=builder /app /app
ENV NODE_ENV=production
EXPOSE 3000
CMD ["sh", "-c", "npm run migrate && npm start"]


 