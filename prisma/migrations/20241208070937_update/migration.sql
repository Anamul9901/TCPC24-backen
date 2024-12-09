/*
  Warnings:

  - You are about to drop the column `facultyId` on the `courses` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "courses" DROP CONSTRAINT "courses_facultyId_fkey";

-- AlterTable
ALTER TABLE "courses" DROP COLUMN "facultyId",
ALTER COLUMN "description" DROP NOT NULL;
