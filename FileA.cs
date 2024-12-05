using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4_MAB
{
    internal class FileA
    {
        public void GetData()
        {
            ArrayList list1 = new ArrayList();
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
            
            list1.Remove("UserA");

            list1.RemoveRange(1, 3);

            foreach (var i in list1)
            {
                Console.WriteLine(i);
            }

            list1.Clear();
            foreach (var i in list1)
            {
                Console.WriteLine(i);
            }

        }

    }
}
