using System;
using System.Threading;

namespace Thread_de1
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
        }

        static void Thread1()
        {
            while (true)
            {
                int inputNumber;
                lock (lockObject)
                {
                    Console.Write("Nhap so nguyen can kiem tra: ");
                    inputNumber = Convert.ToInt32(Console.ReadLine());
                    n = inputNumber;
                }

                if (inputNumber == 0)
                    break;

                Thread.Sleep(5);
            }
        }

        static void Thread2()
        {
            while (true)
            {
                int currentNumber;
                lock (lockObject)
                {
                    currentNumber = n;
                }

                if (n == 0)
                    break;

                Console.WriteLine($"{currentNumber} {isPrimeNumber(currentNumber)}");

                Thread.Sleep(10);
            }
        }

        static string isPrimeNumber(int number)
        {
            if (number < 2)
            {
                return "Khong phai so nguyen to";
            }

            int squareRoot = (int)Math.Sqrt(number);
            for (int i = 2; i <= squareRoot; i++)
            {
                if (number % i == 0)
                {
                    return "Khong phai so nguyen to";
                }
            }

            return "La so nguyen to";
        }
    }
}
