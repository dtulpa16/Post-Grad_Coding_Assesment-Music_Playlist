import express, { Request, Response } from "express";
import cors from "cors";
import musicRoutes from "./routes/musicRoutes";
import playlistRoutes from "./routes/playlistRoutes";

const app = express();
const PORT = 5000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use("/api/music", musicRoutes);
app.use("/api/playlist", playlistRoutes);

// Health Check Endpoint
app.get("/health", (req: Request, res: Response) => {
  res.status(200).send("OK");
});

// Server start
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
