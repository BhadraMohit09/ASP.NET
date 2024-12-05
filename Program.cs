using Lab_4_MAB;
using System;

public class Program
{
    public static void Main()
    {
        //FileA f1 = new FileA();
        //f1.GetData();

        //FileB f2 = new FileB();
        //f2.GetData();

        //FileC f3= new FileC(10);
        //f3.Push(1);
        //f3.Push(2);
        //f3.Push(3);
        //f3.Push(4);
        //f3.Push(5);
        //f3.Display();
        //f3.Pop();
        //f3.Display();

        FileD f4 = new FileD();
        f4.EnQueue(1);
        f4.EnQueue(2);
        f4.EnQueue(3);

        Console.WriteLine("Queue is:: ");
        f4.Display();

        Console.WriteLine("Peek:: " + f4.Peek());

        Console.WriteLine("DeQueue:: " + f4.DeQueue());

        Console.WriteLine(f4.Contains(2)); //Returns True

        f4.Clear();
    }
}