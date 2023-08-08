/*
  Warnings:

  - You are about to drop the column `artistViewUrl` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `collectionArtistId` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `collectionArtistName` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `collectionCensoredName` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `collectionExplicitness` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `collectionViewUrl` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `discCount` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `discNumber` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `isStreamable` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `kind` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `trackCensoredName` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `trackExplicitness` on the `Song` table. All the data in the column will be lost.
  - You are about to drop the column `wrapperType` on the `Song` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Song" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "artistId" INTEGER NOT NULL,
    "collectionId" INTEGER NOT NULL,
    "trackId" INTEGER NOT NULL,
    "artistName" TEXT NOT NULL,
    "collectionName" TEXT NOT NULL,
    "trackName" TEXT NOT NULL,
    "trackViewUrl" TEXT NOT NULL,
    "previewUrl" TEXT NOT NULL,
    "artworkUrl30" TEXT NOT NULL,
    "artworkUrl60" TEXT NOT NULL,
    "artworkUrl100" TEXT NOT NULL,
    "collectionPrice" REAL NOT NULL,
    "trackPrice" REAL NOT NULL,
    "releaseDate" DATETIME NOT NULL,
    "trackCount" INTEGER NOT NULL,
    "trackNumber" INTEGER NOT NULL,
    "trackTimeMillis" INTEGER NOT NULL,
    "country" TEXT NOT NULL,
    "currency" TEXT NOT NULL,
    "primaryGenreName" TEXT NOT NULL
);
INSERT INTO "new_Song" ("artistId", "artistName", "artworkUrl100", "artworkUrl30", "artworkUrl60", "collectionId", "collectionName", "collectionPrice", "country", "currency", "id", "previewUrl", "primaryGenreName", "releaseDate", "trackCount", "trackId", "trackName", "trackNumber", "trackPrice", "trackTimeMillis", "trackViewUrl") SELECT "artistId", "artistName", "artworkUrl100", "artworkUrl30", "artworkUrl60", "collectionId", "collectionName", "collectionPrice", "country", "currency", "id", "previewUrl", "primaryGenreName", "releaseDate", "trackCount", "trackId", "trackName", "trackNumber", "trackPrice", "trackTimeMillis", "trackViewUrl" FROM "Song";
DROP TABLE "Song";
ALTER TABLE "new_Song" RENAME TO "Song";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
