# Use Ubuntu base image (as per project requirement)
FROM ubuntu:22.04

# Install Python and pip
RUN apt update && apt install -y python3 python3-pip

# Copy app files
WORKDIR /app
COPY app.py /app
COPY requirements.txt /app

# Install dependencies
RUN pip3 install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python3", "app.py"]
