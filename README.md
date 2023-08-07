# Music Playlist Backend

Welcome to the Music Playlist Platform! This is a full-stack application designed for music enthusiasts to create, modify, and enjoy their own music playlists, and dive deep into a rich collection of songs across genres.

## Table of Contents
1. [Features](#features)
2. [Installation](#installation)
3. [Usage](#usage)
4. [API Endpoints](#api-endpoints)
5. [Data Structures](#data-structures)

## Features

- **Browse Songs**: Access a comprehensive database of songs.
  
- **Song Management**:
    - **Create**: Add new songs to the collection.
    - **View**: Fetch song details using trackId.
    - **Update**: Edit song details using trackId.
    - **Delete**: Remove a song using its trackId.

- **Playlist Management**:
    - **Create**: Forge new personalized playlists.
    - **View**: Access playlists by their unique names.
    - **Edit**: Modify playlists by their unique names.
    - **Delete**: Delete playlists by their names.
## Installation

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

4. (Optional) You may want to set up environment variables or any configurations if required.

## Usage

After starting the server, you can interact with the API via tools like [Postman](https://www.postman.com/) or through the frontend application.

## API Endpoints

### **Song Endpoints:**

| Method | Endpoint          | Description                        |
|--------|-------------------|------------------------------------|
| `GET`  | `api/music/`               | Fetch all songs                    |
| `POST` | `api/music/`               | Add a new song                     |
| `GET`  | `api/music/:trackId`       | Retrieve details of a specific song using its ID |
| `PUT`  | `api/music/:trackId`       | Update a song using its ID         |
| `DELETE`| `api/music/:trackId`      | Remove a song using its ID         |

### **Playlist Endpoints:**

| Method | Endpoint            | Description                              |
|--------|---------------------|------------------------------------------|
| `GET`  | `api/playlist/`        | Fetch all playlists                      |
| `POST` | `api/playlist/`                 | Create a new playlist                    |
| `GET`  | `api/playlist/:playlistName`    | Access a playlist by its unique name     |
| `PUT`  | `api/playlist/:playlistName`    | Modify a playlist by its unique name     |
| `DELETE` | `api/playlist/:playlistName`  | Delete a playlist by its unique name     |

## Data Structures

### **Song Data Structure**:

```json
{
    "wrapperType": "string",
    "kind": "string",
    "artistId": "number",
    "collectionId": "number",
    "trackId": "number",
    "artistName": "string",
    "collectionName": "string",
    "trackName": "string",
    "collectionCensoredName": "string",
    "trackCensoredName": "string",
    "collectionArtistId": "number",
    "collectionArtistName": "string",
    "artistViewUrl": "string",
    "collectionViewUrl": "string",
    "trackViewUrl": "string",
    "previewUrl": "string",
    "artworkUrl30": "string",
    "artworkUrl60": "string",
    "artworkUrl100": "string",
    "collectionPrice": "number",
    "trackPrice": "number",
    "releaseDate": "string",
    "collectionExplicitness": "string",
    "trackExplicitness": "string",
    "discCount": "number",
    "discNumber": "number",
    "trackCount": "number",
    "trackNumber": "number",
    "trackTimeMillis": "number",
    "country": "string",
    "currency": "string",
    "primaryGenreName": "string",
    "isStreamable": "boolean"
}
```
### **Playlist Data Structure**:

```json
{
  "playlistName": "String",
  "songs": "Array[] of Songs"
}
```
