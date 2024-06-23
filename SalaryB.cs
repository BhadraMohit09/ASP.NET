using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    interface Gross
    {
        void Gross_sal();
    }

    public class SalaryB : Gross
    {
        // Data members
        public double HRA { get; set; }
        public double TA { get; set; }
        public double DA { get; set; }
        public SalaryB(double hra, double ta, double da)
        {
            HRA = hra;
            TA = ta;
            DA = da;
        }

        public void Gross_sal()
        {
            double grossSalary = HRA + TA + DA;
            Console.WriteLine("Gross Salary: " + grossSalary);
        }

        public void Disp_sal()
        {
            Console.WriteLine("HRA: " + HRA);
            Console.WriteLine("TA: " + TA);
            Console.WriteLine("DA: " + DA);
        }
    }
    public class Employee
    {
        public string Name { get; set; }

        public void basic_sal(double basicSalary)
        {
            Console.WriteLine("Employee Name: " + Name);
            Console.WriteLine("Basic Salary: " + basicSalary);
        }
    }
}
