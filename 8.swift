if 조건 {
     /* 실행 구문 */
} else if 조건 {
    /* 실행 구문 */
} else {
    /* 실행 구문 */
}

let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 합니다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다.
//if someInteger { }

/* switch 구문의 기본 형태

switch 비교값 {
case 패턴:
    /* 실행 구문 */
default:
    /* 실행 구문 */
}
*/

// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!

// 생각해보기 : if-else 구문과 switch 구문의 사용에 있어 각각의 장단점은 무엇이 있을지 생각해봅시다.

/*
나의 생각 : switch 문은 성적같은 처리를 할 때 90점 이상은 A, 80점 이상은 B 이런 식으로 특정 범위 내에서 조건으로 나눌 때 사용하는 것 같고, if-else 구문은 특정 범위가 아니라 모든 범위 내에서 필요한 조건을 추출할 때 사용하는 것 같다.

​

다른 사람의 의견 : 

1. switch구문은 상대적으로 다뤄야 할 케이스가 많은 경우, if else로 구현한 코드보다 더욱더 빠른 성능을 보인다.하지만 상대적으로 적은 case들에 대해서 jump해야할 구간이 명확한 if-else와 달리 점프테이블을 만들어서 해당 케이스로 점프해야하는 switch구문의 특성상 테이블을 만드는등의 오버헤드가 없는 If-else문이 더욱 뛰어나다고 생각합니다! 따라서 case가 많을 경우에 switch구문을, case가 적은 경우 if-else문을 사용하는것이 옳다고 생각합니다

​

2. if문과 switch구문의 제일 큰 차이점은, if문은 조건의 결과가 true / false로 정해지는 값을 가진다는 것이고, swithch문은 조건의 결과가 특정한 값을 가르킨다는 점 입니다.

따라서, 수식과 같이 특정한 값을 도출해 내는 경우에는 switch구문을 사용하는 것이 더 유용하고/ 비교연산자를 이용하여 참과 거짓을 판단하는 경우에는 if문이 적절하다 생각합니다
*/