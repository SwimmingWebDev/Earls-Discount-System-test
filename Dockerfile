# Use the official Python image
FROM python:3.10

# Set the working directory
WORKDIR /Earls_Discount_System

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 8080 for the application to run on
EXPOSE 8080

# Run the Django development server
CMD gunicorn --bind :$PORT Earls_Discount_System.wsgi
