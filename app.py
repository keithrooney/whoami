from flask import Flask
from flask import request

app = Flask(__name__)


@app.route("/", methods=["GET"])
def root():
    return request.remote_addr, 200


if __name__ == '__main__':
    app.run(port=8080)
