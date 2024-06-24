using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4_MAB
{
    internal class FileC
    {
        int[] elements;
        int top;
        int max;
        public FileC(int size)
        {
            elements = new int[size];
            top = -1;
            max = size;
        }

        public void Push(int value)
        {
            if (top == max - 1)
            {
                Console.WriteLine("Stack Overflow...");
            }
            else
            {
                elements[++top] = value;

            }
        }

        public void Pop()
        {
            if (top == max - 1)
            {
                Console.WriteLine("Stack Underflow...");
            }
            else
            {
                int popElement = elements[top--];
                Console.WriteLine("Element popped from the stack...");
            }
        }

        public void Peek()
        {
            if (top == -1)
            {
                Console.WriteLine("Stack is Empty...");
            }
            else
            {
                int newTop = elements[top];
                Console.WriteLine($"Top element is {newTop}");
            }
        }



        public void Display()
        {
            if (top == max - 1)
            {
                Console.WriteLine("Stack is Empty...");
            }
            else
            {
                Console.WriteLine("Stack Elements:: ");
                for (int i = 0; i < 5; i++)
                {
                    Console.WriteLine(elements[i]);
                }
            }
            Console.WriteLine(elements.Contains(3));
        }
    }
}
