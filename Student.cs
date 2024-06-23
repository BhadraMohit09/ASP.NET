using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Student
    {
        int Enrollment;
        String Name;
        int Semester;
        double CPI;
        double SPI;

        public Student(int Enrollment, String Name, int Semester, double CPI, double SPI)
        {
            this.Enrollment = Enrollment;
            this.Name = Name;
            this.Semester = Semester;
            this.CPI = CPI;
            this.SPI = SPI;
        }

        public void Display()
        {
            Console.WriteLine(this.Enrollment);
        }
    }

}
