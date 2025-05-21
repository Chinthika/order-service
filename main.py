import newrelic.agent
from src.app import app
import uvicorn

if __name__ == "__main__":
    newrelic.agent.initialize("newrelic.ini")
    uvicorn.run(app, host="0.0.0.0", port=8000)
