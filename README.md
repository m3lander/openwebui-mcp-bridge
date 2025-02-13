# OpenWebUI MCP-Bridge Integration

This repository contains the configuration and setup for integrating MCP-Bridge with OpenWebUI on a Raspberry Pi using Docker and Cloudflare tunnels.

## Prerequisites

- Docker and Docker Compose installed on your Raspberry Pi
- Cloudflare account for tunnel setup
- Git installed

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/m3lander/openwebui-mcp-bridge.git
   cd openwebui-mcp-bridge
   ```

2. Start the services:
   ```bash
   docker-compose up -d
   ```

3. Pull the Mistral model for Ollama:
   ```bash
   curl -X POST http://localhost:11434/api/pull -d '{"name":"mistral"}'
   ```

4. The MCP-Bridge service will be available at `http://localhost:8000`

## Configuration

The main configuration files are:

- `docker-compose.yml`: Defines the service stack
- `config.json`: Contains MCP-Bridge configuration
- `Dockerfile`: Builds the MCP-Bridge container

## Usage

Once running, configure your OpenWebUI installation to use the MCP-Bridge endpoint:

```
http://localhost:8000/v1
```

## License

MIT License