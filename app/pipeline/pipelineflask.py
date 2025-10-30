##change for testing
from flake8 import Flask
app = Flask(__name__)
@app.route('/')
def home():
    return "Yo yo from CI/CD pipeline!"
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)