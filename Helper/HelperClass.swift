

import Foundation



  //MARK:- Main Structure
struct EmplyeeResponse : Codable
{
    var status : String = ""
    var data : [EmployeeData] = [EmployeeData]()
}

  //MARK:-  Employee Structure
struct EmployeeData : Codable
{
    var id : Int = 0
    var employee_name : String = ""
    var employee_salary : Int = 0
    var employee_age : Int = 0
    var profile_image : String = ""
}

  //MARK:- Constants
struct Constants
{
    static var url = "http://dummy.restapiexample.com/api/v1/employees"
}



