import express, { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
const router = express.Router();

// Interface
import { Song } from "../interfaces/Song";

//* Get all songs
router.get("/", async (req: Request, res: Response) => {
  const songs: Song[] = await prisma.song.findMany();
  return res.status(200).send(songs);
});

//* Get a specific song
router.get("/:songId", async (req: Request, res: Response) => {
  const songId = req.params.songId;
  return res.send(`Song with ID: ${songId}`);
});

//* Update a song
router.put("/:songId", async (req: Request, res: Response) => {
  const songId = req.params.songId;
  return res.send(`Song with ID: ${songId} updated`);
});

//* Delete a song
router.delete("/:songId", async (req: Request, res: Response) => {
  const songId = req.params.songId;
  return res.send(`Song with ID: ${songId} deleted`);
});

export default router;
