from flask import Flask, jsonify, render_template, request
from flask_cors import CORS

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route("/api/user/login", methods=["GET", "POST"])
def login(*args, **kwargs):
    # print 'Got request for login'
    # print args
    # print kwargs
    # print request.args
    # print request.args.get("username")
    # print request.values.get("username")
    user = request.form.get('username')
    print request.form.get('password')

    response = {'username': user}

    return jsonify(response)


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)
