using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Thread_de4
{
    internal class Program
    {
        static int n;
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
            while(true)
            {
                int input;

                lock (lockObject)
                {
                    do
                    {
                        Console.Write("Nhap gia tri: ");
                        while (!int.TryParse(Console.ReadLine(), out input))
                        {
                            Console.WriteLine("Nhap lai gia tri la so nguyen.");
                            Console.Write("Nhap gia tri: ");
                        }
                    }
                    while (input < 0 || input > 20 || string.IsNullOrEmpty(input.ToString()));

                    n = input;
                }

                if (n == 0)
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
                int currentInput;
                lock (lockObject)
                {
                    currentInput = n;
                }
                if (n == 0)
                {
                    break;
                }

                Console.WriteLine($"Giai thua: {Giaithua(currentInput).ToString()}");

                Thread.Sleep(10);
            }
        }

        static int Giaithua(int input)
        {
            int giaithua = 1;
            for(int i=1; i<= input; i++)
            {
                giaithua = giaithua * i;
            }
            return giaithua;
        }
    }
}
