// 상수와 변수 선언
let 상수이름: 타입 = 값
var 변수이름: 타입 = 값

// 값의 타입이 명확하다면 타입 생략 가능
let 상수이름 = 값
var 변수이름 = 값

// 상수와 변수 활용
let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류발생

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

nickName = "yagom"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없지요
nickName = "야곰"

/* 
생각해보기 : 다음과 같은 경우 각 값은 상수와 변수 중 어느 것으로 선언?
OOO name = "yagom"
OOO numberToAdd = 5
OOO pi = 3.14159
OOO maxItemCount = 1000
*/

// 나의 생각
let name = "yagom" // 구조체나 클래스 객체의 이름으로 저장될 때는 상수 
var name = "yagom" // but 이름에 대한 입력을 받아들인다고 가정하면 변수로 사용
var numberToAdd = 5 // 더하는 값은 바뀔 수 있으므로
let pi = 3.14159 // 파이 값은 절대로 변화하지 않으므로 상수
var maxItemCount // 상황에 따라 더 늘어날 수도 있고 줄어들 수도 있기 때문에 var
