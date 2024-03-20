using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace EFCodeFirstDB.Model
{
    public class StudentDbContext : DbContext  //ise context class jab bolenge tag DBContext inharite kiya ho
    {
        public StudentDbContext() : base("name=B22Entity") //connection string ka name or context class ka name same hota hai
                                                           //agar change karna hai to context class ke constructor ko batana padenga esa
        {

        }

        // jitne table add utne DBSET property add karna padenga
        public DbSet<Trainer> Trainer { get; set; } //trainers name se table banenga Database me
        public DbSet<Student> students { get; set; } //students name se table nahi banenga kyu ki Student class me Attribute me Table ka Name defind kiya hai usi name se table create honga
    }


}