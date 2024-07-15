# Python Application Deployment on Kubernetes

## Overview
This project demonstrates the deployment of a Python web application on Kubernetes. The application displays the current time in Toronto, Canada, and is exposed via a Kubernetes NodePort service on port 3030.

## Project Structure
The project consists of the following files:
- `app.py`: Python application code that fetches and displays the current time in Toronto.
- `Dockerfile`: Dockerfile for containerizing the Python application.
- `assignment2-deployment.yaml`: Kubernetes Deployment YAML file for deploying the Docker image.
- `assignment2-service.yaml`: Kubernetes Service YAML file to expose the application on port 3030.


## Setup Instructions
Follow these steps to deploy the application on Kubernetes:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Mayureshkn99/CLO835_assignment2.git
   cd CLO835_assignment2
   ```

2. **Build Docker Image:**
   - Ensure Docker is installed and running.
   - Build the Docker image from the Dockerfile:
     ```bash
     docker build -t mayureshkn99/assignment2:latest .
     ```

3. **Push Docker Image:**
   - Tag the Docker image:
     ```bash
     docker tag assignment2:latest <username>/assignment2:latest
     ```
   - Push the Docker image to Docker Hub (or your preferred Docker registry):
     ```bash
     docker push <username>/assignment2:latest
     ```

4. **Deploy on Kubernetes:**
   - Apply the Kubernetes Deployment and Service manifests:
     ```bash
     kubectl apply -f assignment2-deployment.yaml
     kubectl apply -f assignment2-service.yaml
     ```

5. **Access the Application:**
   - Find the NodePort assigned to the service:
     ```bash
     kubectl get services assignment2-service
     ```
   - Access the application using any Kubernetes node's IP and the NodePort (e.g., `http://<node-ip>:3000`).

## Docker Hub Repository
- **URL:** [mayureshkn99/assignment2](https://hub.docker.com/r/mayureshkn99/assignment2)
- **Image Tag:** `mayureshkn99/assignment2:latest`
- **Visibility:** Public