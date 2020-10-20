
FROM node:14-slim

WORKDIR /usr/src/app

COPY package*.json ./

# Install dependencies.
# If you add a package-lock.json speed your build by switching to 'npm ci'.
RUN npm ci --only=production
RUN npm i -g @nestjs/cli
# Copy local code to the container image.
COPY . .

# Display directory structure
RUN ls -l

# Expose API port
EXPOSE 3000

# Run the web service on container startup.
CMD [ "npm", "start" ]
