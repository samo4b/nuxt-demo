FROM node:20.5.1-alpine3.18 AS build

WORKDIR /usr/src/nuxt-app
COPY package*.json ./
RUN npm ci --omit=optional
COPY . .
RUN npm run build \
  && rm -rf node_modules


FROM node:20.5.1-alpine3.18 AS runtime

WORKDIR /usr/src/nuxt-app
COPY --chown=node:node --from=build /usr/src/nuxt-app /usr/src/nuxt-app
USER node
EXPOSE 3000
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000
ENV NODE_ENV=production
ENTRYPOINT [ "node", ".output/server/index.mjs" ]