# Builder stage
FROM alpine AS builder
COPY data.txt /tmp/data.txt

# Final stage
FROM fedora
COPY --from=builder /tmp/data.txt /
 
