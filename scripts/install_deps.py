import subprocess

def install_dependencies():
    print("Installing ChromaDB and dependencies...")
    subprocess.run(["pip", "install", "chromadb>=0.4.0"], check=True)
    print("Installation complete.")

if __name__ == "__main__":
    install_dependencies()