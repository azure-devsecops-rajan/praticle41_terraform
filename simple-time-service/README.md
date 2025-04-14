# 🕒 SimpleTimeService

A lightweight, containerized microservice built using **Python + Flask** that returns the current UTC timestamp and the IP address of the requester in JSON format.

This project is created as part of the DevOps Challenge to demonstrate skills in containerization, documentation, and DevOps best practices.

---

## 📌 Project Purpose

This service can be used in distributed systems to retrieve client IP and timestamp. It can also be helpful for debugging or request tracing when placed behind reverse proxies or API gateways.

---

## 🧾 API Endpoint

### `GET /`

**Response Format (JSON):**

```json
{
  "timestamp": "2025-04-14T15:34:20Z",
  "ip": "127.0.0.1"
}
```
---

### 🔧 Prerequisites

Before getting started, make sure the following tools are installed on your system:

| Tool       | Purpose                                 | Install Link                                                                 |
|------------|-----------------------------------------|------------------------------------------------------------------------------|
| Docker     | To build and run the container          | [Install Docker](https://docs.docker.com/get-docker/)                        |
| Git        | To clone the repository                 | [Install Git](https://git-scm.com/downloads)                                 |
| Python 3.x | To run the Flask app locally (optional) | [Install Python](https://www.python.org/downloads/)                          |
---
## 🚀 Quick Start

### 🔹 Step 1: Clone the Repository

```bash
git clone https://github.com/your-username/simple-time-service.git
cd simple-time-service
```

### 🔹 Step 2: Build the Docker Image
```bash
docker build -t simpletimeservice .
```

### 🔹 Step 3: Run the Docker Container
```bash
docker run -p 5000:5000 simpletimeservice
```
Now open your browser or use curl to access:
```bash
http://localhost:5000
```
You should see the JSON response with timestamp and IP.
---
## 🐳 DockerHub Image (Public)
To pull and run directly without cloning:
```bash
docker pull rajanyadav/simpletimeservice
docker run -p 5000:5000 rajanyadav/simpletimeservice
```
---
## 🔐 Security & Best Practices
```bash
✅ Runs as a non-root user in Docker
✅ Uses slim Python base image to keep the image small
✅ No unnecessary dependencies or layers
✅ No secrets or credentials are exposed in the repo
```
---
## 🗂️ Project Structure
```bash
simple-time-service/
├── app.py              # Flask app
├── requirements.txt    # Python dependencies
├── Dockerfile          # Container instructions
└── README.md           # Project documentation
```
---
## 🙋‍♂️ Author
Made with ❤️ by Rajan Yadav