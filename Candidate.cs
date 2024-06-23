using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    class Candidate
    {
        int id;
        string? name;
        int age;
        double weight, height;

        public void getData()
        {
            Console.WriteLine("Enter ID:: ");
            this.id = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter name:: ");
            this.name = Console.ReadLine();

            Console.WriteLine("Enter age:: ");
            this.age = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter Weight:: ");
            this.weight = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Height:: ");
            this.height = Convert.ToDouble(Console.ReadLine());
        }

        public void Display()
        {
            Console.WriteLine("ID is ==> " + this.id);
            Console.WriteLine("Name is ==> " + this.name);
            Console.WriteLine("Age is ==> " + this.age);
            Console.WriteLine("Weight is ==> " + this.weight);
            Console.WriteLine("Weight is ==> " + this.height);
        }
    }
}
