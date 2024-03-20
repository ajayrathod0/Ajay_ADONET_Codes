using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace EFCodeFirstDB.Model
{
    [Table("B22Student")]
    public class Student
    {
        [Key]
        public int RollNumber { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("StudentName", TypeName = "varchar")]
        public string Name { get; set; }

        [MaxLength(100)]//not null add nahi honga column me sql me
        public string City { get; set; }

        [Required]
        public string Email { get; set; }


        [NotMapped] // add nahi honga yah column Sql me
        public string ConfirmEmail { get; set; }


        [ForeignKey("Trainer")] //add foreign key trainer table ke primary column me 
        public int TrainerId { get; set; }
        public Trainer Trainer { get; set; } // foreigh key relestion banane ke liye 
    }
}