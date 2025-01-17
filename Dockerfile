FROM node:20-slim
LABEL authors="gorun"

RUN corepack enable && pnpm --version

COPY . /app
WORKDIR /app

RUN pnpm install
RUN pnpm run build

EXPOSE 3000

ENTRYPOINT ["pnpm", "run", "serve"]