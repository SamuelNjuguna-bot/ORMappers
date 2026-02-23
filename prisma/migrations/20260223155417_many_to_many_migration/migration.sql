-- CreateTable
CREATE TABLE "Employee" (
    "id" SERIAL NOT NULL,
    "Name" TEXT NOT NULL,

    CONSTRAINT "Employee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Jobtitle" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "Jobtitle_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Employedwithtitle" (
    "id" SERIAL NOT NULL,
    "eId" INTEGER NOT NULL,
    "jId" INTEGER NOT NULL,
    "created" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Employedwithtitle_pkey" PRIMARY KEY ("eId","jId")
);

-- AddForeignKey
ALTER TABLE "Employedwithtitle" ADD CONSTRAINT "Employedwithtitle_eId_fkey" FOREIGN KEY ("eId") REFERENCES "Employee"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Employedwithtitle" ADD CONSTRAINT "Employedwithtitle_jId_fkey" FOREIGN KEY ("jId") REFERENCES "Jobtitle"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
