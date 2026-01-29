# Dockerfile best practices
# syntax=docker/dockerfile:1
FROM node:24-alpine AS builder
WORKDIR /app
COPY package*.json ./
COPY . .
RUN npm ci --only=production && npm cache clean --force

FROM gcr.io/distroless/nodejs24-debian13
COPY --from=builder /app /app
WORKDIR /app
USER nonroot:nonroot
EXPOSE 3000
CMD ["server.js"]