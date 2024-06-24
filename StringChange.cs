using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    internal class StringChange
    {
        public string str1;
        public void GetData()
        {
            Console.WriteLine("Enter String:: ");
            str1 = Console.ReadLine();
            string result = ReplaceData(str1);
            Console.WriteLine(result);
        }
        public string ReplaceData(string str)
        {
            char[] array = str.ToCharArray();
            for(int i = 0; i<array.Length; i++)
            {
                if (char.IsLower(array[i]))
                {
                    array[i] = char.ToUpper(array[i]);
                }
                else if (char.IsUpper(array[i]))
                {
                    array[i] = char.ToLower (array[i]);
                }
            }
            return new string(array);
        }

    }
}
