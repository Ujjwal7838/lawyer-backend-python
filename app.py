from flask import Flask, jsonify

# Create the Flask app
app = Flask(__name__)

# Create a simple test route
@app.route('/test', methods=['GET'])
def test_route():
    return jsonify({"message": "✅ Hello from your Python backend!"})

# Run the app
if __name__ == '__main__':
    app.run(debug=True, port=5000)