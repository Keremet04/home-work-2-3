//
//  main.swift
//  2
//
//  Created by Керемет  on 23/10/22.
//

//import Foundation
//
//print("Hello, World!")
//



class Teacher{
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    
    

    init(name: String, surname: String, age: Int){

        
        self.name = name
        self.surname = surname
        self.age = age
    }
 
    func showInfoteachers(){
        print(" Teacher's name is \(name) \(surname), The age is \(age)")
    }
    
    
    
}



var teacher1 = Teacher(name: "Anna", surname: "Azamatova", age: 28 )
var teacher2 = Teacher(name: "April", surname: "Almazovna", age: 45 )
var teacher3 = Teacher(name: "Anton", surname: "Pavlov", age: 49 )


    teacher1.showInfoteachers()
    teacher2.showInfoteachers()
    teacher3.showInfoteachers()


class Students: Teacher{
    var avaragescore: Double = 0.0
    var grade: String = ""
    
    init(name: String, surname: String, age: Int, avaragescore: Double, grade: String ){
        
        self.avaragescore = avaragescore
        self.grade = grade
        
        super.init(name: name, surname: surname, age: age)
    }
    
    func showstudentsInfo(){
        print("Student name is \(name) \(surname), The age is \(age), The avarage score is \(avaragescore),\(grade)")
    }
}

var student1 = Students(name: "Alex", surname: "Amanov", age: 13, avaragescore: 3.5,  grade: "7th grade")
var student2 = Students(name: "Kate", surname: "Mate", age: 15, avaragescore: 5.0,  grade: "9th grade")
var student3 = Students(name: "Violet", surname: "Jhons", age: 14, avaragescore: 4.3,  grade: "8th grade")

student1.showstudentsInfo()
student2.showstudentsInfo()
student3.showstudentsInfo()



    class DataBase{
        
        var teachersar: [Teacher] = []
        var studentsar: [Students] = []
        var countstudents: Int = 0
        var countteachers: Int = 0

        
        init(countstudents: Int, countteachers: Int){
            
            self.countstudents = countstudents
            self.countteachers = countteachers
        }

        func countteach(){
           print ("Number of teachers - \(teachersar.count)")
            }
        func countstud(){
            print("Number of students - \(studentsar.count)")
            
        }
        
        
        func addstudents(){
            studentsar.append(student1)
            studentsar.append(student2)
            studentsar.append(student3)
            print(studentsar)
        }
        
        func addteachers(){
            teachersar.append(teacher1)
            teachersar.append(teacher2)
            teachersar.append(teacher3)
            print(teachersar)
        }
        
        
        func showStudentlist() {
            
            for (index, item) in studentsar.enumerated() {
                print("Имя: \(item.name)\nФамилия:\(item.surname)\nВозраст:\(item.age)\nКласс:\(item.grade)\nСредний балл:\(item.avaragescore)")
                
            }
            
            func showTeacherslist(){
                
                for (index, item) in teachersar.enumerated() {
                    print("Имя: \(item.name)\nФамилия:\(item.surname)\nВозраст:\(item.age)")
                }
                
                
                func deletestudents(){
                    teachersar.removeAll()
                    dump(teachersar)
                    
                }
                
                func deleteteacher(){
                    studentsar.removeAll()
                    dump(studentsar)
                }
                
            }
        }
        
    }

        
var school = DataBase(countstudents: 0, countteachers: 0)
school.addstudents()
school.addteachers()
school.countteach()
school.countstud()
school.showStudentlist()
school.showTeacherslist()
school.deletestudents()
school.deleteteacher()
