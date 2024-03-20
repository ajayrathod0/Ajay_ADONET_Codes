using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EFCodeFirstDB.Model
{
    public class Trainer
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string City { get; set; }

        public int Experinence { get; set; }
    }
}