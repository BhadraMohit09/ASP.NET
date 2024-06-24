using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    interface CalculateAll
    {
        public void Addition();
        public void Subtraction();
    }
    internal class Result : CalculateAll
    {
        public void Addition()
        {
            int a = 20;
            int b = 30;
            int Result = a + b;
            Console.WriteLine("Addition is ==> " + Result);
        }

        public void Subtraction()
        {
            int a = 20;
            int b = 30;
            int Result = a - b;
            Console.WriteLine("Subtraction is ==> " + Result);
        }
    }
}
