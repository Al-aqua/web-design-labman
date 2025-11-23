# Build stage
FROM rust:latest as builder

WORKDIR /app

# Install mdbook
RUN cargo install mdbook

# Copy project files
COPY . .

# Build the book
RUN mdbook build

# Runtime stage
FROM nginx:alpine

# Copy built book from builder stage
COPY --from=builder /app/book /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
