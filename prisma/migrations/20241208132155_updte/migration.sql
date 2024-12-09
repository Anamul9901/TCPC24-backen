/*
  Warnings:

  - Added the required column `classDataType` to the `classData` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "classDataType" AS ENUM ('pdf', 'document', 'links');

-- AlterTable
ALTER TABLE "classData" ADD COLUMN     "classDataType" "classDataType" NOT NULL;
