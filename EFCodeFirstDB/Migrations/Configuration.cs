namespace EFCodeFirstDB.Migrations
{
    using EFCodeFirstDB.Model;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<EFCodeFirstDB.Model.StudentDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(EFCodeFirstDB.Model.StudentDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.

            Trainer t1 = new Trainer() { Name = "vikul", City = "pune", Experinence = 14 };
            context.Trainer.Add(t1); // jab kuch add karna hai add karne ke Bad "Update-Database" command fire karni hai database me add karne ke liye

            Student s1 = new Student() { Name = "ajay", City = "pune", Email = "a@a.com" };
            context.students.Add(s1);
        }
    }
}
