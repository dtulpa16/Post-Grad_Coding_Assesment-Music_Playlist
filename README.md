# Music Playlist Backend

This repository contains the backend code for the Music Playlist, developed using Express.js and TypeScript.

## Table of Contents

- [Getting Started](#getting-started)
- [Setup and Installation](#setup-and-installation)
- [API Endpoints](#api-endpoints)
- [Data Structure](#data-structure)

## Getting Started

This backend is designed to handle all operations associated with this Music Playlist application. The system communicates with JSON files (`songs.json`), simulating a database for the mentioned data.

## Setup and Installation

1. **Prerequisites**
   - Node.js and npm installed on your machine.
   - An IDE of choice (e.g., Visual Studio Code).

2. **Installation Steps**
- Clone the repository.
   ```bash
   git clone https://github.com/dtulpa16/Post-Grad_Coding_Assessment-Music_Playlist.git
   
- Navigate to the backend directory.
  ```bash
  cd Post-Grad_Coding_Assessment-Music_Playlist
- Install the required packages.
  ```bash
  npm install
- Start the server.
  ```bash
  npm start
3. **Verify Installation**
- Ensure the server is running by sending a GET request to `http://localhost:5000/health`.

## API Endpoints

- **General**
  - `GET /health`: Check if the server is running.

- **Songs**
  - `GET /api/music`: Retrieve all bookings.
  - `GET /api/music/:id`: Retrieve a specific booking by its ID.
  - `POST /api/music`: Create a new booking.
  - `PUT /api/music/:id`: Update a booking's information by its ID.
  - `DELETE /api/music/:id`: Cancel a booking by its ID.


## Data Structure

1. **Songs.json**
   - Contains a list of sample Song Data that you will be using for this application.
