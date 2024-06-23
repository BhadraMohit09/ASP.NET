using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Salary
    {
        public double Basic;
        public double TA;
        public double DA;
        public double HRA;
        public Salary(double basic, double ta, double da = 0.1, double hra = 0.2)
        {
            Basic = basic;
            TA = ta;
            DA = da;
            HRA = hra;
        }
        public double CalculateTotalSalary()
        {
            return Basic + (Basic * TA) + (Basic * DA) + (Basic * HRA);
        }
    }
}
