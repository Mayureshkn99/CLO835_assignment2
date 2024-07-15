# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make port 3030 available to the world outside this container
EXPOSE 3030

# Run app.py when the container launches
CMD ["python", "app.py"]
