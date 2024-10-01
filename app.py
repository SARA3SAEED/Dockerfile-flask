from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the Flask App!"

@app.route('/about')
def about():
    return "This is a simple Flask application."

@app.route('/contact')
def contact():
    return "Feel free to contact us!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

