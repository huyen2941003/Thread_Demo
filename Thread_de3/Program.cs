using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Thread_de3
{
    internal class Program
    {
        static string n = "";
        static readonly object lockObject = new object();
        static void Main(string[] args)
        {
            ThreadStart op1 = new ThreadStart(Thread1);
            ThreadStart op2 = new ThreadStart(Thread2);

            Thread thread1 = new Thread(op1);
            Thread thread2 = new Thread(op2);

            thread1.Start();
            thread2.Start();

            thread1.Join();
            thread2.Join();

            Console.ReadKey();
        }
        static void Thread1()
        {
            while (true)
            {
                string input;
                lock (lockObject)
                {
                    Console.Write("Nhap chuoi ban muon nhap: ");
                    input = Console.ReadLine();
                    n = input;
                }

                if (n == "thoat")
                {
                    break;
                }

                Thread.Sleep(5);
            }
        }
        static void Thread2()
        {
            while (true)
            {
                string currentInput;
                lock (lockObject)
                {
                    currentInput = n;
                }

                if (n == "thoat")
                {
                    break;
                }
                Console.WriteLine($"So luong tu trong chuoi la:  {Word(currentInput).ToString()}");
                Thread.Sleep(10);
            }

        }
        static int Word(string input)
        {
            for(int i = 0; i < input.Length; i++)
            {
                if (input[input.Length - 1] == ' ')
                {
                    return input.Split(' ').Count() - 1;
                }    
            }    
            return input.Split(' ').Count();
        }
    }
}
