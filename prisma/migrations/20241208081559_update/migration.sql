/*
  Warnings:

  - The primary key for the `courseFaculty` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `courseFaculty` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "courseFaculty" DROP CONSTRAINT "courseFaculty_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "courseFaculty_pkey" PRIMARY KEY ("facultyId", "courseId");
