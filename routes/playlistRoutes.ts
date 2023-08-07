import express, { Request, Response } from "express";
import { Song } from "../interfaces/Song";
import { Playlist } from "../interfaces/Playlist";
const router = express.Router();
const fs = require("fs");
const path = require("path");

//* Sample Data
const songs: Song[] = require("../data/Songs.json");
const playlists: Playlist[] = require("../data/Playlists.json");

//* GET all playlists
router.get("/playlists", (req: Request, res: Response) => {
  res.json(playlists);
});

//* Create a playlist
// Take note of how the data is being stored & saved
router.post("/", (req: Request, res: Response) => {
  const newPlaylist = req.body;
  playlists.push(newPlaylist);

  // Save to the JSON file
  fs.writeFileSync(
    path.join(__dirname, "../data/Playlists.json"),
    JSON.stringify(playlists)
  );

  res.json({ message: "New playlist created", playlist: newPlaylist });
});

//* Get a specific playlist
router.get("/:playlistName", (req: Request, res: Response) => {
  const playlistId = req.params.playlistName;
  res.send(`Playlist with Name: ${playlistId}`);
});

//* Update a playlist
router.put("/:playlistName", (req: Request, res: Response) => {
  const playlistId = req.params.playlistName;
  res.send(`Playlist with Name: ${playlistId} updated`);
});

//* Delete a playlist
router.delete("/:playlistName", (req: Request, res: Response) => {
  const playlistId = req.params.playlistName;
  res.send(`Playlist with Name: ${playlistId} deleted`);
});

export default router;
