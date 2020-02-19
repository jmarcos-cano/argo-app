#!/usr/bin/env python3

from flask import Flask
import os
app = Flask(__name__)

version=os.getenv("VERSION","v0.0")


@app.route('/')
def hello_world():
    return f'<h1>Hello, World! {version} </h1>'

if __name__ == '__main__':
    app.run(host="0.0.0.0")