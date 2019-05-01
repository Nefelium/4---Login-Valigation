//
//  LoginValidationTests.swift
//  LoginValidationTests
//
//  Created by admin on 31.01.2018.
//  Copyright © 2018 admin. All rights reserved.
//

import XCTest
import UIKit
@testable import LoginValidation

class LoginValidationTests: XCTestCase {
    
    var viewController: LoginViewController!
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginValid () {
        // Здесь мы вызываем методы тестирования XCTAssertTrue и XCTAssertFalse, чтобы проверить корректные и некорректные логины соответственно
        let sampleLogin = "abc@gmail.com"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin))
        
        let sampleLogin1 = "vasya5"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin1))
    
        let sampleLogin2 = "Carda3839*#&$<"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin2))
        
        let sampleLogin3 = "9fj ejkef"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin3))
        
        let sampleLogin4 = "Turumbey"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin4))
       
        let sampleLogin5 = "g"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin5))
        
        let sampleLogin6 = "jdsiugwiuefeiuhfiwuehiuebiuwhuiehfwkuehfwiuehowieoopqqdznmmcnjrhfeyy"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin6))
        
        let sampleLogin7 = "6woiu"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin7))
        
        let sampleLogin8 = "life15good"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin8))
        
        let sampleLogin9 = "ark.inc-best"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin9))
        
        let sampleLogin10 = "Петр"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin10))
        
        let sampleLogin11 = "-yourk"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin11))
        
        let sampleLogin12 = ".BOBAH"
        XCTAssertFalse(LoginViewController.access.isValidLogin(testStr: sampleLogin12))
        
        let sampleLogin13 = "Just.a.good.login"
        XCTAssertTrue(LoginViewController.access.isValidLogin(testStr: sampleLogin13))
        
    }
    
    
}
