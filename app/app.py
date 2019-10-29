#!/usr/bin/python3
"""Module app"""

from flask import Flask
from flask import render_template, flash, redirect
from f_recognition import recognizer
from flask import jsonify, request
import base64
import cv2
from imageio import imread
import io
import os

app = Flask(__name__)
app.url_map.strict_slashes = False

@app.route('/status')
def status():
    """
    function for status route that returns the status
    """
    if request.method == 'GET':
        resp = {"status": "OK"}
        return jsonify(resp)
    

@app.route('/login', methods=['POST'])
def login_post():
    """
    function to detect the user
    """
    image = base64.b64decode(request.form['image'])
    b64_bytes = base64.b64encode(image)
    b64_string = b64_bytes.decode()
    img = imread(io.BytesIO(base64.b64decode(b64_string)))

    # finally convert RGB image to BGR for opencv
    # and save result
    cv2_img = cv2.cvtColor(img, cv2.COLOR_RGB2BGR)
    result = recognizer.recognize(cv2_img)
    #create call to heroku
    return jsonify(result)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)