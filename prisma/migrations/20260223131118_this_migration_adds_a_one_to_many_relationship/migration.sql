-- CreateTable
CREATE TABLE "student" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Courses" (
    "id" SERIAL NOT NULL,
    "courseName" TEXT NOT NULL,
    "courseId" INTEGER,

    CONSTRAINT "Courses_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Courses" ADD CONSTRAINT "Courses_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "student"("id") ON DELETE SET NULL ON UPDATE CASCADE;
