from flask import Flask, jsonify, request
from datetime import datetime

app = Flask(__name__)

@app.route("/", methods=["GET"])
def get_time():
    client_ip = request.remote_addr
    current_time = datetime.utcnow().isoformat() + "Z"
    return jsonify({
        "timestamp": current_time,
        "ip": client_ip
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
