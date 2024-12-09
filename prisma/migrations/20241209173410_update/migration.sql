/*
  Warnings:

  - The primary key for the `grades` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `grades` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "grades" DROP CONSTRAINT "grades_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "grades_pkey" PRIMARY KEY ("studentId", "courseId");
