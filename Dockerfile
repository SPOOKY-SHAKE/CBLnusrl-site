# Set the base image
FROM node:14 as build

# Set working directory
WORKDIR /app

# Install dependencies for frontend
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install

# Build frontend
COPY frontend/ ./frontend/
RUN cd frontend && npm run build

# Install dependencies for backend
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy everything to the app folder
COPY . .

# Expose ports (adjust based on your actual app)
EXPOSE 3000 5000

# Start both services (adjust based on your actual start commands)
CMD ["sh", "-c", "cd backend && node server.js & cd frontend && npm start"]