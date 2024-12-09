/*
  Warnings:

  - The primary key for the `course_enrollments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `course_enrollments` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "course_enrollments" DROP CONSTRAINT "course_enrollments_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "course_enrollments_pkey" PRIMARY KEY ("studentId", "courseId");
