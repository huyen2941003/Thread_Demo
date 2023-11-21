using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Thread_de2
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
            while(true)
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
            while(true)
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
                Console.WriteLine($"{currentInput} chuyển thành => {Word(currentInput)}");
                Thread.Sleep(10);
            }    
        }

        static string Word(string input)
        {
            string c;
            string resutl = "";
            for (int i = 0; i < input.Length; i++)
            {
                c = input[i].ToString();
                resutl = c + resutl;
            }
            return resutl;
        }    
    }
}
