//
//  LightModel.swift
//  mvcdemo
//
//  Created by Suryanarayan Sahu on 07/02/24.
//

import Foundation
import UIKit

protocol TrafficColorProtocol {
    var topButtonColor: UIColor {get}
    var middleButtonColor: UIColor {get}
    var bottomButtonColor: UIColor {get}
}

struct TrafficColorModel: TrafficColorProtocol {
    var topButtonColor: UIColor
    var middleButtonColor: UIColor
    var bottomButtonColor: UIColor

    init(topBtnColor: UIColor, middleBtnColor: UIColor, bottomBtnColor: UIColor) {
        self.topButtonColor = topBtnColor
        self.middleButtonColor = middleBtnColor
        self.bottomButtonColor = bottomBtnColor
    }
}
