-- CreateTable
CREATE TABLE "Song" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "wrapperType" TEXT NOT NULL,
    "kind" TEXT NOT NULL,
    "artistId" INTEGER NOT NULL,
    "collectionId" INTEGER NOT NULL,
    "trackId" INTEGER NOT NULL,
    "artistName" TEXT NOT NULL,
    "collectionName" TEXT NOT NULL,
    "trackName" TEXT NOT NULL,
    "collectionCensoredName" TEXT NOT NULL,
    "trackCensoredName" TEXT NOT NULL,
    "collectionArtistId" INTEGER NOT NULL,
    "collectionArtistName" TEXT NOT NULL,
    "artistViewUrl" TEXT NOT NULL,
    "collectionViewUrl" TEXT NOT NULL,
    "trackViewUrl" TEXT NOT NULL,
    "previewUrl" TEXT NOT NULL,
    "artworkUrl30" TEXT NOT NULL,
    "artworkUrl60" TEXT NOT NULL,
    "artworkUrl100" TEXT NOT NULL,
    "collectionPrice" REAL NOT NULL,
    "trackPrice" REAL NOT NULL,
    "releaseDate" DATETIME NOT NULL,
    "collectionExplicitness" TEXT NOT NULL,
    "trackExplicitness" TEXT NOT NULL,
    "discCount" INTEGER NOT NULL,
    "discNumber" INTEGER NOT NULL,
    "trackCount" INTEGER NOT NULL,
    "trackNumber" INTEGER NOT NULL,
    "trackTimeMillis" INTEGER NOT NULL,
    "country" TEXT NOT NULL,
    "currency" TEXT NOT NULL,
    "primaryGenreName" TEXT NOT NULL,
    "isStreamable" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "Playlist" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "playlistName" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_PlaylistToSong" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_PlaylistToSong_A_fkey" FOREIGN KEY ("A") REFERENCES "Playlist" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_PlaylistToSong_B_fkey" FOREIGN KEY ("B") REFERENCES "Song" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Playlist_playlistName_key" ON "Playlist"("playlistName");

-- CreateIndex
CREATE UNIQUE INDEX "_PlaylistToSong_AB_unique" ON "_PlaylistToSong"("A", "B");

-- CreateIndex
CREATE INDEX "_PlaylistToSong_B_index" ON "_PlaylistToSong"("B");
