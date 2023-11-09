# Use the official Directus image as the base image
FROM directus/directus:10.7.1

# Set environment variables for Directus
ENV KEY="replace-with-random-value"
ENV SECRET="replace-with-random-value"
ENV ADMIN_EMAIL="admin@example.com"
ENV ADMIN_PASSWORD="d1r3ctu5"
ENV DB_CLIENT="sqlite3"
ENV DB_FILENAME="/directus/database/data.db"
ENV WEBSOCKETS_ENABLED=1
ENV EXTENSIONS_AUTO_RELOAD=1
ENV POLYGON_API_KEY="7q0Th2Wpj_JJJnExrV6CpYp4jpsfnLDW"
ENV PAYSTACK_SECRET_KEY="sk_test_8c42453a42a1009f2398b3c327526f0b3138094d"
ENV PAYSTACK_INTEGRATION_CURRENCY="NGN"

# Expose the necessary port for Directus
EXPOSE 8055

# Define the volume for Directus data storage
VOLUME ["/directus/database", "/directus/uploads", "/directus/extensions"]
