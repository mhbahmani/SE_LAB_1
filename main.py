from flask import Flask
from flask import render_template


app = Flask(__name__)


@app.route("/health")
def health():
    return 200