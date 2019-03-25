using System;
using System.Linq;

namespace The_Coin_Change_Problem
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                var nm = Console.ReadLine().Split(' ').Select(el => long.Parse(el)).ToArray();
                long n = nm[0];
                long m = nm[1];

                var coins = Console.ReadLine().Split(' ').Select(el => long.Parse(el)).ToArray();

                long result = getChangeCount(n, coins, m);
                Console.WriteLine("{0}", result);
            }
        }

        static long getChangeCount(long n, long[] coins, long m)
        {
            long[] ways = new long[n + 1];

            ways[0] = 1;
            for (int i = 1; i < n + 1; i++)
            {
                ways[i] = 0;
            }

            for (int i = 0; i < m; i++)
            {
                long currentCoin = coins[i];
                for (int j = 0; j < n + 1; j++)
                {
                    if (currentCoin <= j)
                    {
                        ways[j] += ways[j - currentCoin];
                    }
                }
            }
            
            return ways.Last();
        }
    }
}
