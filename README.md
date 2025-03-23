![image](https://github.com/user-attachments/assets/e6f8aad7-2fc4-4411-9b6b-1525cafdc3c4)

Go Web App - Kubernetes Deployment

Project Overview
This is a simple Go web application that displays the current date and time. The project is containerized using Docker and deployed on Kubernetes using KIND (Kubernetes in Docker).

Features

Displays the current date and time

Containerized with Docker for easy deployment

Deployed on Kubernetes using KIND

Exposed as a service for access

Folder Structure
go-web-app
┣ main.go # Go web application code
┣ Dockerfile # Docker configuration
┣ deployment.yaml # Kubernetes Deployment file
┣ service.yaml # Kubernetes Service file
┗ README.md # Project documentation

Setup & Run Locally

Prerequisites
Make sure you have the following installed:

Go (https://go.dev/doc/install)

Docker (https://docs.docker.com/get-docker/)

Kubernetes (Kind) (https://kind.sigs.k8s.io/docs/user/quick-start/)

kubectl (https://kubernetes.io/docs/tasks/tools/install-kubectl/)

Clone the Repository
git clone https://github.com/YOUR_GITHUB_USERNAME/go-web-app.git
cd go-web-app

Build and Run Locally
go run main.go

Check at: http://localhost:8080

Docker Setup

Build the Docker Image
docker build -t go-web-app .

Run the Container
docker run -p 8080:8080 go-web-app

Check at: http://localhost:8080

Deploying on Kubernetes with KIND

Create a Kind Cluster
kind create cluster --name my-cluster

Load Docker Image into Kind
kind load docker-image go-web-app --name my-cluster

Apply Kubernetes Deployment
kubectl apply -f deployment.yaml

Apply Kubernetes Service
kubectl apply -f service.yaml

Check if Pods are Running
kubectl get pods

Get Service URL
kubectl get svc go-web-app

If EXTERNAL-IP is <none>, use port forwarding:
kubectl port-forward deployment/go-web-app 8080:8080

Now visit http://localhost:8080
