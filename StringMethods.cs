using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    internal class StringMethods
    {
        public void showMethods()
        {
            string str1 = "Darshan University";
            Console.WriteLine("Original String ==> " + str1);
            Console.WriteLine("Lower Case String ==> " + str1.ToLower());
            Console.WriteLine("Upper Case String ==> " + str1.ToUpper());
            Console.WriteLine("Length of string is ==> " + str1.Length);
            Console.WriteLine("Reverse String is ==> " + str1.Reverse());
        }
    }
}
