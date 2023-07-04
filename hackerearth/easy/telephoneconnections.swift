//https://www.hackerearth.com/practice/algorithms/dynamic-programming/introduction-to-dynamic-programming-1/practice-problems/algorithm/group-minmax-1cddbceb/
//easy

var A = Int(readLine()!)!
let B = Int(readLine()!)!

var maximumHouses = B == 1 ? A : A-B+1;
var maximum = 1;
func factorial(_ num: Int) -> Int {
    var f = 0;
    if ( num == 0 ){
        return 0;
   }
    for i in 1...num{
        f += i;
    }
    return f;
}
print(maximumHouses)
maximum = factorial(maximumHouses - 1)

var minimumHouses : Int = Int(A / B);
var maxMinimumHouses : Int = Int(A % B);


var minimum = maxMinimumHouses == 0 ? factorial(minimumHouses - 1) * B : (factorial(minimumHouses - 1) * (B - 1)) + (minimumHouses * maxMinimumHouses)


if B != 1 {

print("\(minimum) \(maximum)")

}
else {
    print("\(maximum) \(maximum)")
}
