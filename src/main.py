from flask import Flask
from flask import render_template, redirect


app = Flask(__name__)


@app.route("/health")
def health():
    return 200

@app.route('/register', methods=["POST"])
def register():
    return redirect("/health")