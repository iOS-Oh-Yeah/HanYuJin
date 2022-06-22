//
//  UIFont+.swift
//  WeatherClone
//
//  Created by 한유진 on 2022/06/22.
//

import Foundation
import UIKit

extension UIFont {
    
    public enum appleSDGothicNeo: String {
        
        case thin = "AppleSDGothicNeo-Thin"
        case light = "AppleSDGothicNeo-Light"
        case regular = "AppleSDGothicNeo-Regular"
        case medium = "AppleSDGothicNeo-Medium"
        case semiBold = "AppleSDGothicNeo-SemiBold"
        case bold = "AppleSDGothicNeo-Bold"
        
        public func font(size: CGFloat) -> UIFont {
            return UIFont(name: self.rawValue, size: size)!
        }
    }
}
