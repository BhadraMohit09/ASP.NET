using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
    internal class OutOfBound
    {
        int[] array = new int[5];
        public void ShowOutOfBound()
        {
            try
            {
                for (int i = 0; i < array.Length; i++)
                {
                    array[i] = Convert.ToInt32(Console.ReadLine());
                }

                Console.WriteLine(array[5]);
            }
            catch (IndexOutOfRangeException ex) {
                Console.WriteLine(ex.Message);
            }
        }

    }
}
