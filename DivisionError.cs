using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    internal class DivisionError
    {
        public void showException()
        {
            try
            {
                int num1 = 10;
                int num2 = 0;
                int result = num1 / num2;
            }
            catch (DivideByZeroException ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine("Divide By Zero value found...");
            }
            Console.WriteLine("Program execution completed...");

        }
    }
}
