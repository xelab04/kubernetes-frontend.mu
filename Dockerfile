FROM registry.suse.com/bci/nodejs:20

WORKDIR /app

COPY ./ /app/

RUN npm install -g pnpm

RUN pnpm install

EXPOSE 3000

ENTRYPOINT [ "pnpm", "run", "nuxt", "dev" ]
