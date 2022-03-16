// 1. Array 선언 및 생성
var integers: Array<Int> = Array<Int>() // 빈 Array 생성 []


// 위와 동일한 표현
// var integers: Array<Int> = [Int]()
// var integers: Array<Int> = []
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()


// 2. Array 활용
// append : 인덱스에 추가
integers.append(1) // [1]
integers.append(100) // [1, 100]

//integers.append(101.1) // Int 타입이 아니므로 Array에 추가할 수 없습니다

print(integers)	// [1, 100]

// contains : 멤버 포함 여부 확인
print(integers.contains(100)) // true
print(integers.contains(99)) // false

// 멤버 교체
integers[0] = 99

// remove : 멤버 삭제
integers.remove(at: 0) // 0번 인덱스에 있는 값을 없애달라.
integers.removeLast() // 맨 마지막에 있는 요소를 없애달라.
integers.removeAll() // 모든 멤버를 삭제해달라

// count : 멤버 수 확인
print(integers.count) // integers의 요소 개수를 출력해달라.

// 인덱스를 벗어나 접근하려면 익셉션 런타임 오류발생
//integers[0]

// Array<Double> 와 [Double] 는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings = [String]() = [String]()

// 빈 Character Array 생성
var characters = [Character]() = [] // []는 새로운 빈 Array


// 3. 불변 Array: let을 사용하여 Array 선언
let immutableArray = [1, 2, 3] // [1, 2, 3]

// 수정이 불가능한 Array이므로 멤버를 추가하거나 삭제할 수 없습니다
//immutableArray.append(4) // 오류 : let 선언을 했으므로 append가 불가능
//immutableArray.removeAll()

// 1. Dictionary의 선언과 생성
// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성 => key type = String, value type = Any
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 위와 동일한 표현
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary = [String: Any]()


// 2. Dictionary 활용
// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value" // "value"
anyDictionary["anotherKey"] = 100 // 100

print(anyDictionary) // ["someKey": "value", "anotherKey": 100]
// 출력값 : ["someKey":"value", "anotherKey":100]

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary" // "dictionary
print(anyDictionary) // 출력값 : ["someKey":"dictionary", "anotherKey":100]

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey") 
anyDictionary["someKey"] = nil // nil값으로 설정해줌으로 [:] 비어있는 Dictionary가 만들어짐
print(anyDictionary) // [:]


// 3. 불변 Dictionary: let을 사용하여 Dictionary 선언
let emptyDictionary: [String: String] = [:] // 빈 dictionay다 라고 선언
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// 불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

// 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
// "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없습니다.
// 컴파일 오류가 발생합니다
// let someValue: String = initalizedDictionary["name"] // 에러! 
// => 안되는 이유 : 키에 해당하는 값이 있을 수도, 없을 수도 있기 때문! 불확실성! => 옵셔널에서 다시 배움

// 1. Set 생성 및 선언
var integerSet: Set<Int> = Set<Int>()

// insert : 새로운 멤버 입력
// 동일한 값은 여러번 insert해도 한번만 저장됩니다.
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(intigerSet) // {100, 99, 1} // 아무리 많이 저장해도 99는 한번만 저장!

// contains: 멤버 포함 여부 확인
print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // false

// remove: 멤버 삭제
integerSet.remove(99) // {100, 1}
integerSet.removeFirst() // {1}

// count: 멤버 개수
integerSet.count // 1


// 2. Set의 활용
// 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용합니다.
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// union : 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]

// sorted : 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// intersection : 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

// subtracting : 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]

/*
생각해보기 : 다음과 같은 경우에는 각각 어떤 컬렉션 타입을, 상수/변수 선언 중 어떤 것을 사용하면 유용할지 생각해 봅시다.

영어 알파벳 소문자를 모아두는 컬렉션
책의 제목과 저자 정리를 위한 컬렉션
Boostcamp iOS 수강생 명부 작성을 위한 컬렉션

나의 생각
영어 알파벳 소문자를 모아두는 컬렉션 : Set, 상수 
// 영어 알파벳은 추가되거나 삭제될 일이 없기 때문에 상수 / 중복 값과 순서 필요가 없으므로 Set
책의 제목과 저자 정리를 위한 컬렉션 : Dictionary, 변수 
// 책이 추가가 될 수도 있기 때문에 변수 / 책 제목과 저자를 연결시키기 위해 Dictionary
Boostcamp iOS 수강생 명부 작성을 위한 컬렉션 : Array, 변수 
// 수강생은 더 추가되거나 취소할 일이 있기 때문에 변수 / 동명이인이 있을 수도 있으므로 Array
*/

let alphabet: Set<Character>=["a","b","c","z"]

var bookList: [String: String]=[:]
bookList["정의란 무엇인가"] = "마이클 샌델"
booklist["고구려"] = "김진명"

var studentName: Array<String>=[:]
studentName.append("cody")
studentName.append("야곰")

