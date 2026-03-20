# 🐳 Containerization and DevOps Lab

Containerized Web Application with PostgreSQL using Docker Compose and IPvlan

## 📋 Project Details

- **Author**: Raghav Malik
- **GitHub**: [@raghav21malik](https://github.com/raghav21malik)
- **Date**: March 2026
- **Technologies**: Docker, Docker Compose, PostgreSQL, Node.js, Express.js, IPvlan Networking

## 🔗 Quick Links

- 🌐 **[Project Showcase](https://raghav21malik.github.io/Containerization-and-DevOps-Lab)** - View the interactive project page
- 📚 **[GitHub Repository](https://github.com/raghav21malik/Containerization-and-DevOps-Lab)** - Source code and documentation
- 🐙 **[View on GitHub](https://github.com/raghav21malik)** - All projects by Raghav Malik

## 📖 Project Overview

This lab demonstrates containerization and DevOps practices using Docker and Docker Compose. The project includes:

- **Multi-container application** with Node.js backend and PostgreSQL database
- **Docker Compose** orchestration for service management
- **Volume persistence** for data survival across container restarts
- **IPvlan/Macvlan networking** for advanced network configuration
- **Multi-stage builds** for optimized container images
- **Best practices** for containerization and production deployment

## 🚀 Getting Started

### Prerequisites

- Docker Desktop installed ([Download here](https://www.docker.com/products/docker-desktop))
- Git installed ([Download here](https://git-scm.com/))
- Basic knowledge of Docker and containerization

### Installation & Setup

```bash
# 1. Clone the repository
git clone https://github.com/raghav21malik/Containerization-and-DevOps-Lab.git
cd Containerization-and-DevOps-Lab

# 2. Build and start containers
docker compose up --build

# 3. Application should now be running
# Open browser: http://localhost:3000
```

### Stopping the Application

```bash
# Stop all containers
docker compose down

# Remove volumes (if you want to reset data)
docker compose down -v
```

## 📁 Project Structure

```
Containerization-and-DevOps-Lab/
├── Dockerfile                    # Backend service container definition
├── docker-compose.yml            # Docker Compose configuration
├── backend/                      # Node.js/Express application
│   ├── server.js
│   ├── package.json
│   └── ...
├── database/                     # PostgreSQL initialization scripts
│   ├── init.sql
│   └── schema.sql
├── Screenshots/                  # Lab screenshots and demos
│   ├── docker-ps.png
│   ├── network-inspect.png
│   └── ...
└── README.md                     # This file
```

## 🏗️ Architecture

### Services

1. **Backend Service** (Node.js + Express)
   - REST API for data operations
   - Connected to PostgreSQL database
   - Port: 3000

2. **Database Service** (PostgreSQL)
   - Data persistence with volumes
   - Initialization scripts for schema setup
   - Port: 5432

### Networking

- **Docker Compose Network**: Default bridge network for inter-service communication
- **IPvlan Networking**: Advanced network configuration for specific use cases
- **Volume Mounting**: Data persistence across container lifecycle

## 🔑 Key Features

### Multi-Stage Builds
- Optimized Docker images
- Reduced image size from ~900MB to ~150MB
- Production-ready container optimization

### Docker Compose
- Service orchestration
- Environment variable management
- Volume management
- Network configuration

### Volume Persistence
- Named volumes for database
- Data survival across restarts
- Production-grade data management

### Networking Modes
- Bridge networking (default)
- IPvlan for advanced configurations
- Service-to-service communication

## 📊 Lab Sections

### 1. Introduction & Overview
- Project goals and objectives
- Architecture design
- Technologies used

### 2. Docker & Containerization
- Dockerfile best practices
- Multi-stage builds
- Image optimization techniques

### 3. Docker Compose Setup
- Service configuration
- Volume management
- Environment variables
- Port mapping

### 4. Network Configuration
- Bridge networking
- IPvlan setup
- Network isolation
- Container communication

### 5. PostgreSQL Integration
- Database containerization
- Initialization scripts
- Data persistence
- Volume mounting

### 6. Conclusion & Learnings
- Key takeaways
- Challenges overcome
- Best practices learned

## 🛠️ Docker Commands Cheat Sheet

```bash
# List running containers
docker ps

# List all containers
docker ps -a

# View container logs
docker logs <container-name>

# Execute command in container
docker exec -it <container-name> bash

# Inspect container networks
docker network inspect <network-name>

# View volumes
docker volume ls

# Remove unused resources
docker system prune

# Build specific service
docker compose build <service-name>

# Start specific service
docker compose up <service-name>

# Stop specific service
docker compose stop <service-name>
```

## 📝 Configuration

### Environment Variables

Edit `docker-compose.yml` to configure:

```yaml
environment:
  - POSTGRES_DB=myapp
  - POSTGRES_USER=appuser
  - POSTGRES_PASSWORD=secure_password
  - NODE_ENV=production
```

### Database Connection

Update backend connection string:

```javascript
const db = {
  host: 'postgres',  // Service name from compose
  port: 5432,
  user: 'appuser',
  password: 'secure_password',
  database: 'myapp'
};
```

## 🐛 Troubleshooting

### Port Already in Use
```bash
# Find process using port 3000
lsof -i :3000

# Change port in docker-compose.yml
ports:
  - "3001:3000"  # Map to different port
```

### Database Connection Failed
```bash
# Check if postgres container is running
docker ps | grep postgres

# View postgres logs
docker logs <postgres-container-name>
```

### Volume Permission Issues
```bash
# Check volume contents
docker volume inspect <volume-name>

# Rebuild without cache
docker compose up --build --no-cache
```

### Container Exits Immediately
```bash
# View container logs
docker logs <container-name>

# Check docker-compose.yml syntax
docker compose config
```

## 📚 Resources & References

- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Guide](https://docs.docker.com/compose/)
- [PostgreSQL in Docker](https://hub.docker.com/_/postgres)
- [Node.js Docker Best Practices](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)
- [IPvlan Networking](https://docs.docker.com/network/ipvlan/)

## 🎓 Learning Outcomes

After completing this lab, you will understand:

- ✅ How to containerize applications with Docker
- ✅ Multi-service orchestration with Docker Compose
- ✅ Volume management and data persistence
- ✅ Docker networking (Bridge, IPvlan, Macvlan)
- ✅ Database containerization and integration
- ✅ Production-ready container deployment
- ✅ Docker best practices and optimization
- ✅ DevOps pipeline fundamentals

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for improvements!

## 📧 Contact

- **GitHub**: [@raghav21malik](https://github.com/raghav21malik)
- **Email**: Contact via GitHub profile

## 📜 License

This project is open source and available for educational purposes.

---

**Made with ❤️ by Raghav Malik**

*Last Updated: March 2026*
