-- AlterTable
ALTER TABLE "classData" ALTER COLUMN "description" DROP NOT NULL;

-- CreateTable
CREATE TABLE "attendence" (
    "id" TEXT NOT NULL,
    "isPresent" BOOLEAN NOT NULL DEFAULT true,
    "studentId" TEXT NOT NULL,
    "classId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "attendence_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "attendence" ADD CONSTRAINT "attendence_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "attendence" ADD CONSTRAINT "attendence_classId_fkey" FOREIGN KEY ("classId") REFERENCES "course_classes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
