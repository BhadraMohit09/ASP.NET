using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Distance
    {
        public double Dist1 { get; set; }
        public double Dist2 { get; set; }
        public double Dist3 { get; set; }
        public Distance(double dist1, double dist2)
        {
            Dist1 = dist1;
            Dist2 = dist2;
            Dist3 = 0;
        }

        public void AddDistances()
        {
            Dist3 = Dist1 + Dist2;
        }

        public void DisplayAddition()
        {
            Console.WriteLine("Addition of Distances: " + Dist3);
        }
    }
}
