import { prisma } from "./lib/prisma.ts"


import express from "express"
import cors from "cors"


const app = express()
const port = 3000
app.use(cors({
  origin:"http://localhost:5173",
  methods:["post", "get", "patch"],
}))

// Create operation 1 to  1 mapping

app.post("/createuser", async(req, res)=>{
  const user = await prisma.user.create({
    data:{
      firstName:"Johnte",
      profile:{
        create:{
          username:"aplication",
          phoneNumber:254115028263
        }
      }
    }

  })
  console.log(user)
})


app.get("/fetchdetails", async(req, res)=>{
   const user = await prisma.user.findFirst({
    where:{
      id:4
    },
    include:{
      profile:true
    }
   })
   console.log(user)
})


app.patch("/updateuser", async(req,res)=>{
  const user = await prisma.user.update({
    where:{
      id:4
    },
    data:{
      profile:{
        update:{
          username:"John doe william"
        }
      }
    }
  })
  console.log(user)
})


// Creating a one to many relationship
app.post("/createonetomany",async(req, res)=>{

  const student = await prisma.student.create({

    data:{
      courses:{
        create:{
          courseName:"Design And Analysis Of Algorithms"
        }
      }
    }
  })

  console.log(student)


})


app.post("/manytomany", async(req,res)=>{
  const manytomany = await prisma.employee.create({
    data:{
      employeename:"Alice Smith",
      jobtitle:{
        create:{
          jobtitle:{
            create:{
              jobtitle:"Software Dev"
            }
          }
          
        }
      }
    }

  })
})
app.listen(port, ()=>{
  console.log("server running on port 3000")
})