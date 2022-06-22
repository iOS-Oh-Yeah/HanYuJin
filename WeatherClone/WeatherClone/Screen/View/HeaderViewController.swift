//
//  HeaderViewController.swift
//  WeatherClone
//
//  Created by 한유진 on 2022/06/22.
//

import UIKit
import Then
import SnapKit

class HeaderViewController: UIView {
    
    let locationLabel = UILabel().then {
        $0.sizeToFit()
        $0.textColor = .white
        $0.text = "강남구"
        $0.font = .appleSDGothicNeo.semiBold.font(size: 34)
    }
    let temperatureLabel = UILabel().then {
        $0.textColor = .white
        $0.text = "23°"
        $0.font = .appleSDGothicNeo.regular.font(size: 110)
    }
    let stateLabel = UILabel().then {
        $0.textColor = .white
        $0.text = "흐림"
        $0.font = .appleSDGothicNeo.regular.font(size: 20)
    }
    let highLowTemperature = UILabel().then {
        $0.textColor = .white
        $0.text = "최고:25° 최저:16°"
        $0.font = .appleSDGothicNeo.regular.font(size: 20)
    }
    lazy var headerStackView = UIStackView(arrangedSubviews: [locationLabel,temperatureLabel,stateLabel,highLowTemperature]).then {
        $0.axis = .vertical
        $0.spacing = 0
        $0.alignment = .center
        $0.distribution = .equalCentering
        $0.sizeToFit()
    }
    
//    UI View의 필수 생성자
//    init(coder: NSCoder): 스토리보드 에서 나오면서 UIView를만들때 만들어지는 생성자.
//    뷰를 스토리보드에서 드래그해서만들었는데, 만약 앱이 실행될때 스토리보드가 재구성되면 이 생성자가 호출되면서 UIView가 만들어짐.
//    init(frame: CGRect): 코드로 뷰를 만들때 호출됨. 반드시 CGRect타입으로 프레임을 정해주고 UIView를 생성

    override init(frame : CGRect) {
        super.init(frame: frame)
        addSubview(headerStackView)
        
        headerStackView.snp.makeConstraints {
            $0.height.equalTo(250)
            $0.top.bottom.trailing.leading.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
