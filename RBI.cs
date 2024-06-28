using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab3_MAB
{
    internal class RBI
    {
        public virtual double CalculateInterest(double P, double R, double T)
        {
            double Rate = (P * R * T) / 100;
            return Rate;
        }
    }

    class HDFC : RBI
    {
        public override double CalculateInterest(double P, double R, double T)
        {
            double Rate = (P * R * T) / 100;
            return Rate;
        }
    }

    class SBI: RBI
    {
        public override double CalculateInterest(double P, double R, double T)
        {
            double Rate = (P * R * T) / 100;
            return Rate;
        }
    }

    class ICICI: RBI
    {
        public override double CalculateInterest(double P, double R, double T)
        {
            double Rate = (P * R * T) / 100;
            return Rate;
        }
    }
}
