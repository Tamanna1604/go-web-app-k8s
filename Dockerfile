# Use the official Go image
FROM golang:1.20

# Set working directory inside the container
WORKDIR /app

# Copy everything to /app
COPY . .

# Build the Go application
RUN go build -o main .

# Command to run the application
CMD ["/app/main"]
