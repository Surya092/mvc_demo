//
//  HomeControllerTests.swift
//  mvcdemoTests
//
//  Created by Suryanarayan Sahu on 08/02/24.
//

import XCTest
@testable import mvcdemo

final class HomeControllerTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func setUp() {
        super.setUp()
    }

    func test_topButtonColor() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.red, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.red)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertTrue(homeController.topButton.backgroundColor == colormodel.topButtonColor)
    }
    
    func test_MiddleButtonColor() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.black, bottomBtnColor: UIColor.black)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertTrue(homeController.middleButton.backgroundColor == colormodel.middleButtonColor)
    }
    
    func test_BottomButtonColor() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.yellow)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertTrue(homeController.bottomButton.backgroundColor == colormodel.bottomButtonColor)
    }
    
    func test_noActionIdentification() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.yellow)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertEqual(homeController.buttonLabel.text, "No Button Tapped")
    }
    
    func test_topButtonTapIdentification() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.yellow)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.topButtonTapped(homeController.topButton!)
        XCTAssertEqual(homeController.buttonLabel.text, "Top Button Tapped")
    }
    
    func test_middleButtonTapIdentification() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.yellow)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.middleButtonTapped(homeController.middleButton!)
        XCTAssertEqual(homeController.buttonLabel.text, "Middle Button Tapped")
    }
    
    func test_bottomButtonTapIdentification() {
        let homeController = storyboard.instantiateInitialViewController() as! HomeController
        let colormodel = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.red, bottomBtnColor: UIColor.yellow)
        homeController.model = colormodel
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.bottomButtonTapped(homeController.bottomButton!)
        XCTAssertEqual(homeController.buttonLabel.text, "Bottom Button Tapped")
    }


}
