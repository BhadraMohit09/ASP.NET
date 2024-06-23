using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Account_Details
    {
        public double Principle, Rate, Time;
        
        public void GetData()
        {
            Console.WriteLine("Enter Principle Amount:: ");
            this.Principle = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Amount:: ");
            this.Rate = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Time Period:: ");
            this.Time = Convert.ToDouble(Console.ReadLine());
        }
    }
    class Interest : Account_Details
    {
        double result;
        public void Display()
        {
            this.result = (this.Principle * this.Rate * this.Time) / 100;
            Console.WriteLine("Interest is ==> " + result);
        }
    }
}
