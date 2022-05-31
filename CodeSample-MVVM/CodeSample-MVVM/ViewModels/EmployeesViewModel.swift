//
//  EmployeesViewModel.swift
//  CodeSample-MVVM
//
//  Created by Aklesh on 31/05/22.
//

import Foundation

class EmployeesViewModel : NSObject {
    
    private var apiService : WebServices!
    private(set) var empData : Employees! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  WebServices()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}
