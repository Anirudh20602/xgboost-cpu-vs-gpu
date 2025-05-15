# Use official Python 3 base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy everything from your local folder into the container
COPY . .

# Install required libraries
RUN pip install --no-cache-dir -r requirements.txt

# Expose Jupyter notebook port
EXPOSE 8888

# Run Jupyter when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]