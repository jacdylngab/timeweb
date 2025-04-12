# ⏰ timeweb

TimeWeb is a simple Flask application that displays the current data and time.

## Project Setup Options

To set up the project, follow these steps:

You can either run timeweb locally, or use a prebuilt Docker container — choose the method that works best for you:

### Option 1: Local Setup:
   1. **Clone the repository:**
      ```sh
      git clone https://github.com/jacdylngab/timeweb
      cd timeweb
      
   2. **Create, install dependencies, and activate a virtual environment:**
      ```sh
      make setup
      source env/bin/activate

### Option 2: Docker Container:
   1. **Pull a pre-built image from Docker Hub:**
      ```sh
      docker pull ngabjac/timeweb-container
   2. **Run the pre-built image:**
      ```sh 
      docker run -it --rm \
         -e GITHUB_USER="your-name" \
         -e GITHUB_EMAIL="your-email" \
         -e GITHUB_TOKEN="your-token" \
         -p 8089:8089 \
         -v /etc/localtime:/etc/localtime:ro \
         timeweb-container
      
   3. <details>
      <summary> Click here to see Docker Run Flags Explained </summary>
      <br>
      
      | Flag | Purpose |
      |------|---------|
      | `--rm` | Automatically removes the container when it exits |
      | `-e GITHUB_USER` | Your GitHub username |
      | `-e GITHUB_EMAIL` | Your GitHub email address |
      | `-e GITHUB_TOKEN` | GitHub personal access token |
      | `-v /etc/localtime:/etc/localtime:ro` | Syncs system timezone into container |
      | `-p 8089:8089` | Maps container port 8089 to your local machine |
            
   </details>

   4. **Create, install dependencies, and activate a virtual environment:**
      ```sh
      cd timeweb
      make setup
      source env/bin/activate
   
## Running the Application

To start the Flask application, run:

    make run

Once running, visit:

    http://<host-ip>:8089/

   > Replace `<host-ip>` with your actual machine's IP address.
   > You can find it using `ip a` or `hostname -I` (Linux), `ipconfig` (Windows).

## Running Application Tests

To run tests using pytest and analyze the results using coverage, run:

    make test

## Cleaning Up the Environment

To remove virtual environment directories, __pycache__ directories, and other cache directories, run:

    make clean

## Deactivating the Virtual Environment

To deactivate the virtual environment, run:

    deactivate



