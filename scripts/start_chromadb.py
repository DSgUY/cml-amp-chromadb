import os
import subprocess

def start_chromadb():
    config_path = os.getenv("CHROMA_CONFIG_PATH", "/etc/chroma/chroma_config.yaml")
    print(f"Starting ChromaDB server with config: {config_path}")
    subprocess.run(["chroma", "run", "--path", "/var/lib/chroma", "--config", config_path], check=True)

if __name__ == "__main__":
    start_chromadb()