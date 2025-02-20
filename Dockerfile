FROM cloudera/ml-runtime:1.0.0

# Install ChromaDB and other dependencies
RUN pip install chromadb>=0.4.0

# Copy the setup scripts and configuration files
COPY scripts/ /scripts/
COPY resources/chroma_config.yaml /etc/chroma/chroma_config.yaml

# Set up environment variables
ENV CHROMA_CONFIG_PATH=/etc/chroma/chroma_config.yaml

# Expose the ChromaDB port (default is 8000)
EXPOSE 8000

# Set the working directory
WORKDIR /app

# Make scripts executable
RUN chmod +x /scripts/*.py

# Default command to start the ChromaDB server
CMD ["python3", "/scripts/start_chromadb.py"]