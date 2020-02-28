from flask import *
from flaskwebgui import FlaskUI  # get the FlaskUI class
import json
import os
from helpers import *

app = Flask(__name__)
ui = FlaskUI(app)  # feed the parameters
alarms_file = open("alarms.txt", "r+")


@app.route("/", methods={"GET"})
def index():
    return render_template('index.html')


@app.route("/media")
def send_media():
	get_new_media()
	return jsonify(open("images.txt", "r").read())



