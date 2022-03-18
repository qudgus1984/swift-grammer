class Jss
{
     var name: String = "unknown"
     var age: Int = 0

     func show() {
          print("나의 이름은 \(name), 나이는 \(age)세 입니다.")
     }
}

var jss_1: Jss = Jss()
jss_1.name = "홍길동"
jss_1.age = 30  

var jss_2: Jss = Jss()
jss_2.name = "김철수"
jss_2.age = 28

var jss_3: Jss = Jss()
jss_3.name = "이형희"
jss_3.age = 25 

jss_1.show()
jss_2.show()
jss_3.show()