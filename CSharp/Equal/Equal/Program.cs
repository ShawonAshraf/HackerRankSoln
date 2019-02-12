using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Equal
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                var t = long.Parse(Console.ReadLine());
                for (int i = 0; i < t; i++)
                {
                    var n = long.Parse(Console.ReadLine());

                    var chocolates = Array.ConvertAll(
                        Console.ReadLine().Split(' '),
                        el => Convert.ToInt64(el));

                    var result = equal(chocolates);
                    Console.WriteLine(result);
                }
            }
        }

        static long equal(long[] arr)
        {
            long minimumEl = arr.Min();
            // number of operations
            long[] ops = new long[3];
            int len = arr.Length;

            for (int i = 0; i < len; i++)
            {
                arr[i] -= minimumEl;

                ops[0] += arr[i] / 5;
                ops[0] += (arr[i] % 5) / 2;
                ops[0] += (arr[i] % 5) % 2;
                arr[i]++;

                ops[1] += arr[i] / 5;
                ops[1] += (arr[i] % 5) / 2;
                ops[1] += (arr[i] % 5) % 2;
                arr[i]++;

                ops[2] += arr[i] / 5;
                ops[2] += (arr[i] % 5) / 2;
                ops[2] += (arr[i] % 5) % 2;
            }

            return ops.Min();
        }
    }
}
