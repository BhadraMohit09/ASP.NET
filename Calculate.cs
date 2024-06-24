using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2_MAB
{
     abstract class Sum
     {
        abstract public int SumOfTwo(int a, int b);
        abstract public int SumOfThree(int a, int b, int c);
     }
    internal class Calculate: Sum
    {
        public override int SumOfTwo(int x, int y)
        {
            return x + y;
        }
        public override int SumOfThree(int x, int y, int z) {
            return x + y + z;
        }
    }
}
