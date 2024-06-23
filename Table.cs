using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    public class Furniture
    {
        public string Material;
        public double Price;
    }

    public class Table : Furniture
    {
        public double Height;
        public double SurfaceArea;

        public void DisplayTableDetails()
        {
            Console.WriteLine("Material: " + Material);
            Console.WriteLine("Price: " + Price);
            Console.WriteLine("Height: " + Height);
            Console.WriteLine("Surface Area: " + SurfaceArea);
        }
    }
}
