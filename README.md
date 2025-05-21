# Order Service API

A FastAPI-based microservice for managing orders with full CI/CD pipeline and monitoring.

## Project Structure

```
order-service/
├── Infrastructure/
│   ├── Dockerfile
│   ├── Jenkinsfile.groovy
│   ├── helm/
│   │   ├── Chart.yaml
│   │   ├── values.prod.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── ingress.yaml
│   │       └── service.yaml
│   └── terraform/
│       ├── alert.tf
│       ├── monitor.tf
│       └── variables.tf
├── src/
│   ├── app.py
│   ├── data/
│   │   └── sample_data.py
│   ├── model/
│   │   └── order.py
│   ├── service/
│   │   └── order_service.py
│   └── utils.py
├── test/
│   ├── test_app.py
│   └── service/
│       └── test_order_service.py
├── requirements.txt
├── dev-1.0.0-requirements.txt
└── README.md
```

## Features

- REST API for order management
- Docker container support
- Kubernetes deployment with Helm
- Terraform infrastructure as code
- New Relic monitoring
- CI/CD pipeline with Jenkins

## API Documentation

### Endpoints

- `GET /` - Health check
- `GET /health` - Service health status
- `GET /orders` - Get all orders
- `GET /orders/{order_id}` - Get specific order

## Development

### Local Setup

1. Clone repository
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   pip install -r dev-1.0.0-requirements.txt
   ```
3. Run application:
   ```bash
   python main.py
   ```

## Deployment

### Docker

Build image:
```bash
docker build -t order-service -f Infrastructure/Dockerfile .
```

Run container:
```bash
docker run -p 8000:8000 order-service
```

## Infrastructure

### Terraform Setup

1. Initialize:
   ```bash
   cd Infrastructure/terraform
   terraform init
   ```
2. Apply:
   ```bash
   terraform apply
   ```

## Monitoring

Configure New Relic monitoring in `Infrastructure/helm/values.prod.yaml`

## CI/CD

Jenkins pipeline defined in `Infrastructure/Jenkinsfile.groovy`

## Contributing

1. Fork repository
2. Create feature branch
3. Submit pull request

## License

MIT
