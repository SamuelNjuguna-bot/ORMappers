/*
  Warnings:

  - You are about to drop the `profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "profile" DROP CONSTRAINT "profile_ownerId_fkey";

-- DropTable
DROP TABLE "profile";

-- DropTable
DROP TABLE "user";

-- CreateTable
CREATE TABLE "example" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "example_pkey" PRIMARY KEY ("id")
);
