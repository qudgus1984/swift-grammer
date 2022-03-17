// for in 구문

//기본형태

for item in items {
    /* 실행 구문 */
}

// 사용 방식
var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
// swift의 튜플은 다른 튜플과 비슷하게 사용
for (name, age) in people {
    print("\(name): \(age)")
}

// while 구문의 기본 형태

while 조건 {
    /* 실행 구문 */
}

// 사용 방식
while integers.count > 1 {
    integers.removeLast()
}

// repeat-while 구문

repeat {
    /* 실행 구문 */
} while 조건

// 사용 방식
repeat {
    integers.removeLast()
} while integers.count > 0
