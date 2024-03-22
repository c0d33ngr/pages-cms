FROM node:18-alpine
WORKDIR /app
COPY package*.json .
COPY .dev.vars.example .dev.vars
RUN npm install
COPY . .
EXPOSE 8788
CMD ["npm", "run", "dev"]
