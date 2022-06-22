//
//  ViewController.swift
//  WeatherClone
//
//  Created by 한유진 on 2022/06/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var headerView = HeaderViewController()
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
}
extension ViewController {
    
    private func setUI(){
        
        setBackGroundImage()
        setHeaderViewUI()
        setTableViewUI()
    }
    
    func setHeaderViewUI() {
        
        self.view.addSubview(headerView)
        
        headerView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(83)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
    }
    
    func setBackGroundImage() {
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "skyBackGround")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func setTableViewUI(){
        
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints{
            $0.top.equalTo(headerView.snp.bottom).offset(10)
            $0.leading.bottom.trailing.equalToSuperview()
        }
        
        
    }
    
    
}
extension ViewController {
    private let collectionView : UICollectionView
}

