import express, { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
const router = express.Router();

// Interfaces
import { Song } from "../interfaces/Song";
import { Playlist } from "../interfaces/Playlist";

//* GET all playlists
router.get("/", async (req: Request, res: Response) => {
  const playlists: Playlist[] = await prisma.playlist.findMany({
    include: { songs: true },
  });
  return res.status(200).send(playlists);
});

//* Create a playlist
router.post("/", async (req: Request, res: Response) => {
  return res.status(201).send("Playlist created");
});

//* Get a specific playlist
router.get("/:playlistId", (req: Request, res: Response) => {
  const playlistId = req.params.playlistId;
  return res.status(201).send(`Playlist with Name: ${playlistId}`);
});

//* Update a playlist
router.put("/:playlistId", async (req: Request, res: Response) => {
  const playlistId = req.params.playlistId;
  return res.send(`Playlist with Name: ${playlistId} updated`);
});

//* Delete a playlist
router.delete("/:playlistId", async (req: Request, res: Response) => {
  const playlistId = req.params.playlistId;
  return res.send(`Playlist with Name: ${playlistId} deleted`);
});

export default router;
