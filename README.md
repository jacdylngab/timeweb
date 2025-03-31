# timeweb

TimeWeb is a simple Flask application that displays the current data and time.

## Setup

To set up the project, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/jacdylngab/timeweb
   cd timeweb
   
2. Create, install dependencies, and activate a virtual environment:
   ```sh
   make setup
   source env/bin/activate
   
## Running the Application

To start the Flask application, run:

    make run

Once running, visit:

    http://10.92.21.104:8089/

## Running Application Tests

To run tests using pytest and analyze the results using coverage, run:

    make test

## Cleaning Up the Environment

To remove virtual environment directories, __pycache__ directories, and other cache directories, run:

    make clean

## Deactivating the Virtual Environment

To deactivate the virtual environment, run:

    deactivate
