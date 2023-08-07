import express, { Request, Response } from "express";
import { Song } from "../interfaces/song";
const router = express.Router();
const fs = require("fs");
const path = require("path");

//* Sample Data
const songs: Song[] = require("../data/Songs.json");

// Get all songs
router.get("/", (req: Request, res: Response) => {
  res.json(songs);
});

// Create a song
// Take note of how the data is being stored & saved
router.post("/", (req: Request, res: Response) => {
  const newSong = req.body;
  songs.push(newSong);

  //* Save to the JSON file
  fs.writeFileSync(
    path.join(__dirname, "../data/Songs.json"),
    JSON.stringify(songs)
  );

  res.json({ message: "New song created", song: newSong });
});

// Get a specific song
router.get("/:trackId", (req: Request, res: Response) => {
  const trackId = Number(req.params.trackId);
  const singleSong = songs.filter(s => s.trackId === trackId);
  
  if (singleSong.length) {
    res.json(singleSong[0]);
  } else {
    res.status(404).send(`Song with ID: ${trackId} not found`);
  }

});

// Update a song
router.put("/:trackId", (req: Request, res: Response) => {
  const { trackId } = req.params;
  res.send(`Song with ID: ${trackId} updated`);
});

// Delete a song
router.delete("/:trackId", (req: Request, res: Response) => {
  const { trackId } = req.params;
  res.send(`Song with ID: ${trackId} deleted`);
});

export default router;
