using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_MAB
{
    internal class Account
    {
        int AccountNumber;
        String? Email;
        String? Username;
        String? AccountType;
        double Balance;

        public void GetData()
        {
            Console.WriteLine("Enter Account Number:: ");
            this.AccountNumber = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Email ID:: ");
            this.Email = Console.ReadLine();
            Console.WriteLine("Enter Username:: ");
            this.Username = Console.ReadLine();
            Console.WriteLine("Enter Account Type (Current/Savings):: ");
            this.AccountType = Console.ReadLine();
            Console.WriteLine("Enter Balance:: ");
            this.Balance = Convert.ToDouble(Console.ReadLine());
        }

        public void Display()
        {
            Console.WriteLine("Account Number ==> " + this.AccountNumber);

            Console.WriteLine("Email ID ==> " + this.Email);

            Console.WriteLine("Username ==> " + this.Username);

            Console.WriteLine("Account Type ==> " + this.AccountType);

            Console.WriteLine("Balance is ==> " + this.Balance);
        }
    }
}
