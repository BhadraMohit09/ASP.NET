using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4_MAB
{
    internal class FileB
    {
        public void GetData()
        {
            List<string> list1 = new List<string>();
            list1.Add("UserA");
            list1.Add("UserB");
            list1.Add("UserC");
            list1.Add("UserD");
            list1.Add("UserE");
            list1.Add("UserF");
            list1.Add("UserG");
            list1.Add("UserH");
            list1.Add("UserI");
            list1.Add("UserJ");

            list1.Remove("UserJ");

            list1.RemoveRange(0, 2);

            foreach (string item in list1) { 
                Console.WriteLine(item);
            }

            list1.Clear();

            foreach (string item in list1)
            {
                Console.WriteLine(item);
            }
        }
    }
}
