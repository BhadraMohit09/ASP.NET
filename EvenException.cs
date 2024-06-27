using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    internal class EvenException
    {
        public void ShowData()
        {
            try
            {
                int number = Convert.ToInt32(Console.ReadLine());

                if (number % 2 != 0)
                {
                    throw new ArgumentException("Number is not even...");
                }
            }
            catch (ArgumentException ex) { 
                Console.WriteLine("An error occurred:: " + ex.Message);
            }
    }
}
