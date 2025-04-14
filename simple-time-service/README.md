# 🕒 SimpleTimeService

A lightweight, containerized microservice built using **Python + Flask** that returns the current UTC timestamp and the IP address of the requester in JSON format.

This project is created as part of the DevOps Challenge to demonstrate skills in containerization, documentation, and best practices.

---

## 📌 Project Purpose

This service is useful as a reference or utility microservice in distributed systems. It can be deployed behind a load balancer, reverse proxy, or API gateway to get accurate request metadata.

---

## 🧾 API Endpoint

### `GET /`

**Response Format (JSON)**

```json
{
  "timestamp": "2025-04-14T15:34:20Z",
  "ip": "127.0.0.1"
}


⚙️ Prerequisites
Before you get started, make sure you have the following tools installed:

Tool	Purpose	Install Link
Docker	To build and run containers	Install Docker
Git	To clone the repository	Install Git
Python 3.x (Optional)	To run locally without Docker	Install Python

🚀 Quick Start
🔹 Step 1: Clone the Repository
git clone https://github.com/your-username/simple-time-service.git
cd simple-time-service

🔹 Step 2: Build the Docker Image
docker build -t simpletimeservice .

🔹 Step 3: Run the Docker Container
docker run -p 5000:5000 simpletimeservice
Now open your browser or use curl to access:
http://localhost:5000
You should see the JSON response with timestamp and IP.

🐳 DockerHub Image (Public)
To pull and run directly without cloning:
docker pull rajanyadav/simpletimeservice
docker run -p 5000:5000 rajanyadav/simpletimeservice

🔐 Security & Best Practices
✅ Runs as a non-root user in Docker.
✅ Uses slim Python base image to keep the image small.
✅ No unnecessary dependencies or layers.
✅ No secrets or credentials are exposed in the repo.

🗂️ Project Structure
simple-time-service/
├── app.py              # Flask app
├── requirements.txt    # Python dependencies
├── Dockerfile          # Container instructions
└── README.md           # Project documentation

🙋‍♂️ Author
Made with ❤️ by Rajan Yadav
