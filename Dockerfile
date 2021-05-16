FROM node:14.4.0-alpine

RUN apk update

# Typescript
RUN yarn global add typescript ts-node typesync

# Create a group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

WORKDIR /home/appuser/app
