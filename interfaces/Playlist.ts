import { Song } from "./Song";
export interface Playlist {
  id?: number; 
  playlistName: string;
  songs: Song[];
}