# Use the latest stable Rust image as the base
FROM rust:latest

# Set the working directory to /app
WORKDIR /app

# Clone the Andromeda Core repository
RUN git clone https://github.com/andromedaprotocol/andromeda-core.git

# Change the working directory to /app/andromeda-core
WORKDIR /app/andromeda-core

# Build the project
RUN cargo build --release

# Expose port 30333 for the node to listen on
EXPOSE 30333

# Start the node
CMD ["./target/release/andromeda"]
