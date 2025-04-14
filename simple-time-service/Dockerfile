FROM python:3.11-slim

# Create non-root user
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Set working directory
WORKDIR /app

# Copy requirements & install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Set permissions & use non-root user
RUN chown -R appuser:appgroup /app
USER appuser

# Expose port & run
EXPOSE 5000
CMD ["python", "app.py"]
