using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Quic;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4_MAB
{
    internal class FileD
    {
        public Queue<int> queue;

        public void MyQueue()
        {
            queue = new Queue<int>();
        }

        public void EnQueue(int data) { 
            queue.Enqueue(data);
        }

        public int DeQueue()
        {
            if(queue.Count == 0)
            {
                throw new Exception("Queue is Empty...");
            }
            return queue.Dequeue();
        }

        public int Peek()
        {
            if (queue.Count == 0)
            {
                throw new Exception("Queue is Empty...");
            }
            return queue.Peek();
        }

        public bool Contains(int data) { 
            return queue.Contains(data);   
        } 

        public void Clear()
        {
            queue.Clear();
        }

        public void Display()
        {
            foreach (var item in queue)
            {
                Console.WriteLine(item);
            }
        }
    }
}
