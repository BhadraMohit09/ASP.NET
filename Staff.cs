using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Staff
    {
        string? Name;
        string? Department;
        string? Designation;
        double Experience;
        double Salary;

        Staff[] staff = new Staff[2];

        public void getData()
        {

            for (int i = 0; i < staff.Length; i++)
            {
                staff[i] = new Staff();

                Console.WriteLine("Enter Name:: ");
                staff[i].Name = Console.ReadLine();

                Console.WriteLine("Enter Department:: ");
                staff[i].Department = Console.ReadLine();


                Console.WriteLine("Enter Designation:: ");
                staff[i].Designation = Console.ReadLine();

                Console.WriteLine("Enter Experience::");
                staff[i].Experience = Convert.ToDouble(Console.ReadLine());
            }
        }

        public void Display()
        {
            Console.WriteLine("Data is:: ");
            Console.WriteLine("=============");
            for (int i = 0; i < staff.Length; i++)
            {
                if (staff[i].Designation == "HOD")
                {
                    Console.WriteLine(staff[i].Name);
                    Console.WriteLine(staff[i].Department);
                }
            }
        }
    }
}
