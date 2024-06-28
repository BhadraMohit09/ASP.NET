using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
delegate int Factorial(int num);
namespace Lab3_MAB
{
    internal class Lab3A4
    {
        public int Factorial(int n)
        {
            int fact = 1;
            for(int i=2; i<=n; i++)
            {
                fact *= i;
            }
            return fact;
        }
    }
}
