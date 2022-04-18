// https://www.codechef.com/problems/RATING
// basic

#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int n, value, x, z, y;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> x >> y >> z;
        int ans = (y / x);
        if (z - ans < 0)
        {
            ans = 0;
        }
        else
        {
            ans = z - ans;
        }
        cout << ans;
    }
}
