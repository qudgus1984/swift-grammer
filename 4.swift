var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

let someDouble: Double = someAny  // 컴파일 오류발생
// error! cannot convert value of type 'Any' to specified type 'Double'
// Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없습니다. 
// 명시적으로 타입을 변환해 주어야 합니다. (타입 변환은 차후에 다룹니다.)

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()

// AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.
someAnyObject = 123.12    // 컴파일 오류발생

// someAny는 Any 타입이고, someAnyObject는 AnyObject 타입이기 때문에 nil을 할당할 수 없습니다.
var someAny: Any = 100
var someAnyObject: AnyObject = SomeClass()

// nil을 다루는 방법은 옵셔널 파트에서 다룹니다.
//someAny = nil         // 컴파일 오류발생
//someAnyObject = nil   // 컴파일 오류발생

/*
생각해보기 : 
사람이 사용하는 숫자 '0'은 '없음'이라는 의미를 갖고있습니다. 프로그래밍에서 0은 없음을 나타낼 수 있을까요?
0이 있는데 nil 이라는 표현은 왜 존재하는 것일까요?

나의 생각:
나의 생각 : 프로그래밍에서 0은 없음이라는 의미보다 0이라는 정수 값으로 여겨지므로, nil이라는 표현을 통해

없음 이라는 의미를 표현해 주어야 한다고 생각한다.

사람은 context에 따라 0이라는 단어를 '없음'으로 이해할수도 '0이란 숫자'라고 이해할 수도 있다. 
하지만 모든 것이 명확해야 하는 (i.e. 하나의 단어가 하나의 의미만 지녀야 하는) 컴퓨터의 세계에서 '0'이라는 것은
'0이란 숫자'를 위한 reserved word로 사용되어야 하고, '없음'을 나타내는 별개의 표현이 필요하다. 
따라서 조건문 등을 통해 0을 '없음'이란 것을 표현하는 state로 만들 순 있겠지만, 결국 Int나 Float type의 0이다.
*/
