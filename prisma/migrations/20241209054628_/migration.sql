/*
  Warnings:

  - The primary key for the `attendence` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `attendence` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "attendence" DROP CONSTRAINT "attendence_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "attendence_pkey" PRIMARY KEY ("studentId", "classId");
