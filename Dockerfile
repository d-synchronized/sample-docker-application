FROM node

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Copy simple reques to app directory
COPY simple-api-request.js /app

EXPOSE 8090
CMD [ "node", "simple-api-request.js" ]
