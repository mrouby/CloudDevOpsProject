# Use official Python image as base
FROM python

# Set the working directory inside the container
WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on (Flask default is 5000)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

