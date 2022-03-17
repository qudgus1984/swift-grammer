var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생 //정수형 타입을 넣었기 때문.
// someBool = 1 // 컴파일 오류발생

// Int
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생

//UInt
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생

/*
생각해보기 : 다음코드에서 각각 어떤 타입?
let integer = 100
let floatingPoint = 12.34
let apple = "A"
*/

/*
나의 생각 :
integer => 100 정수이므로 Uint, int, Float, Double 형의 타입이 될 수 있다.
floatingPoint => 12.34 실수이므로 Float, Double 형의 타입이 될 수 있다.
apple => A 이므로 한 글자만 포함하는 Character, 문자열을 포함하는 String 형의 타입이 될 수 있다.
*/

let integer: Int=100
let floatingPoint: Float=12.34
let apple: Character="A"

