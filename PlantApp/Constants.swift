//
//  Constants.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 06/07/22.
//

import UIKit

enum Images {
    case identifyPageImage
    case learnPageImage
    case readPageImage
    case identifyPageDot
    case learnPageDot
    case readPageDot
    case image
    case image1

    var image: UIImage? {
        switch self {
        case .identifyPageImage: return UIImage(named: "ic_onboarding_identify")
        case .learnPageImage: return UIImage(named: "ic_onboarding_learn")
        case .readPageImage: return UIImage(named: "ic_onboarding_read")
        case .identifyPageDot: return UIImage(named: "ic_dots_1")
        case .learnPageDot: return UIImage(named: "ic_dots_2")
        case .readPageDot: return UIImage(named: "ic_dots_3")
        case .image: return UIImage(named: "image")
        case .image1: return UIImage(named: "image2")
        }
    }
}

struct Constant {
    struct Colors{
        static let mainBgColor = UIColor(named: "main_bg")
        static let mainTitleColor = UIColor(named: "main_title_color")
        static let onboardingBtnColor = UIColor(named: "onboarding_btn_color")
        static let mainSubtitleColor = UIColor(named: "main_subtitle_color")
    }
    
    struct TitleLabels{
        static var identifyPageTitleLabel = "Identify Plants"
        static var learnPageTitleLabel = "Learn Many Plants Species"
        static var readPageTitleLabel = "Read Many Articles About Plant"
        static var loginPageTitleLabel = "Hello"
    }
    struct SubtitleLabels {
        static var loginPageSubtitleLabel = "Username"
    }
    
    struct DescriptionLabels{
        static var identifyPageDescription = "You can identify the plants you don't know through your camera"
        static var learnPageDescription = "Let's learn about the many plant species that exist in this world"
        static var readPageDescription = "Let's learn more about beautiful plants and read many articles about plants and gardening"
        static var loginPageDescription = "Let’s Learn More About Plants"
    }
}
