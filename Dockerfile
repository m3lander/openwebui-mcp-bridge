FROM python:3.11-slim

WORKDIR /app

# Install git and build essentials
RUN apt-get update && \
    apt-get install -y git build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install uv for faster Python package installation
RUN pip install uv

# Clone MCP-Bridge repository
RUN git clone https://github.com/SecretiveShell/MCP-Bridge.git .

# Install dependencies using uv
RUN uv pip install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "mcp_bridge.main:app", "--host", "0.0.0.0", "--port", "8000"]