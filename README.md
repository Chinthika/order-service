# Order Service API

A FastAPI-based microservice for managing orders.

## Description

This service provides REST API endpoints to manage orders, including retrieving all orders and getting order details by ID. It uses FastAPI for the web framework and includes sample data for demonstration purposes.

## Prerequisites

- Python 3.9 or higher
- pip (Python package manager)

## Installation

### Local Setup

1. Clone the repository:
   ```
   git clone <repository-url>
   cd order-service
   ```

2. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

3. For development, install development dependencies:
   ```
   pip install -r dev-requirements.txt
   ```

## Running the Application

### Local Development

To run the application locally:

```bash
# Set the Python path to include the current directory
export PYTHONPATH=.

# Run the application
python main.py
```

The API will be available at http://localhost:8000

### Using Docker

1. Build the Docker image:
   ```
   docker build -t order-service -f Infrastructure/Dockerfile .
   ```

2. Run the container:
   ```
   docker run -p 8000:8000 order-service
   ```

The API will be available at http://localhost:8000

## API Endpoints

- `GET /`: Welcome message
- `GET /orders`: Get all orders
- `GET /orders/{order_id}`: Get a specific order by ID

## Testing

### Running Tests

To run the tests:

```bash
# Set the Python path to include the current directory
export PYTHONPATH=.

# Run all tests
python -m pytest

# Run specific tests
python -m pytest test/service/test_order_service.py
```

### API Testing

You can use the provided HTTP request file `test_main.http` to test the API endpoints if you're using an IDE that supports HTTP request files (like PyCharm or VS Code with the REST Client extension).

## Project Structure

```
order-service/
├── Infrastructure/
│   ├── Dockerfile         # Docker configuration
│   └── Jenkinsfile.groovy # CI/CD pipeline configuration
├── src/
│   ├── app.py             # FastAPI application and routes
│   ├── data/
│   │   └── sample_data.py # Sample order data
│   ├── model/
│   │   └── order.py       # Order data model
│   ├── service/
│   │   └── order_service.py # Business logic
│   └── utils.py           # Utility functions
├── test/
│   ├── service/
│   │   └── test_order_service.py # Service tests
│   └── test_app.py        # API tests
├── main.py                # Application entry point
├── requirements.txt       # Production dependencies
├── dev-requirements.txt   # Development dependencies
└── test_main.http         # HTTP request examples
```

## Development

For development, it's recommended to:

1. Install development dependencies:
   ```
   pip install -r dev-requirements.txt
   ```

2. Run tests before submitting changes:
   ```
   python -m pytest
   ```