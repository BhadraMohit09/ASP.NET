using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Rectangle
    {
        int length;
        int breadth;
        public Rectangle(int length, int breadth)
        {
            this.length = length;
            this.breadth = breadth;
        }

        public void evaluate()
        {
            int result = (this.length * this.breadth);
            Console.WriteLine("Area of Rectangle ==> " + result);
        }
    }
}
