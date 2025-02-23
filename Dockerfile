# Use an official lightweight Linux image with Docker installed
FROM docker:dind

# Set working directory to the root where docker-compose.yml is located
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install Docker Compose
RUN apk add --no-cache docker-compose

# Start the Docker daemon and run docker compose up
CMD ["sh", "-c", "dockerd & sleep 3 && docker compose up"]
