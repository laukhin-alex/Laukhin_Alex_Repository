import UIKit

#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha:    1)
//:**Task 1**
//Array of boys's names and girls's names
var boysNames = ["Alex", "Ivan"]
var girlsNames = ["Sveta", "Anna", "Olga"]

//Array students with girls's
var students = girlsNames.sorted(by: <)

//adding boys's names at the beginning of the array
for i in boysNames {
    students.insert(i, at: 0)
    students[0...1].sort(by: <)
}
students.forEach({print($0)})


//:**Task 2**

//sorting the group of students in the alphabetical order
print("_____________________________")
students.sorted(by: {$0 < $1}).forEach({print("\n\($0)")})
print(students.sorted(by: <))

//:**Task 3**

//We will create an array with positive an negative
var A = [0,1,2,3,4,5,-1,-2,-3,-4,-5]
var APositive = A.sorted(by:{$0 < $1}).filter({$0 >= 0})
print(APositive)
APositive.forEach({print("\n\($0)")})

A = [0,1,2,3,4,5,-1,-2,-3,-4,-5]
A.sort()
print(A.filter({$0 >= 0}))

print(A.drop(while: {$0 < 0}).sorted(by:{$0 < $1}))


//:**Task 4**
//Creating an Array [1, 2, 3, 4, 7, 8, 15]
print("==================================================")
var newArray = [1, 2, 3, 4, 7, 8, 15]

//using cycle in a cycle and if-operator we will find sums of indexes in the array, which equal 6
for i in 0..<newArray.count {
    for j in  0..<newArray.count{
        let sum = i + j
        if sum == 6 {
            print("The sum of indexes \(i) and \(j) equals 6")
        }
    }
}

print("==================================================")
//the same method, but here indexes are not repeated!
for i in 0..<newArray.count/2 {
    for j in  newArray.count/2..<newArray.count{
        let sum = i + j
        if sum == 6 {
            print("The sum of indexes \(i) and \(j) equals 6")
        }
    }
}
