from flask import Flask, request
from function import handler

app = Flask(__name__)


@app.route('/', methods=['POST'])
def handle():
    return handler.handle(request)


@app.route('/_/health', methods=['GET'])
def health():
    return "OK"


handler.init()
app.run("0.0.0.0", "8080")
