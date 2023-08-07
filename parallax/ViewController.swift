//
//  ViewController.swift
//  parallax
//
//  Created by Mateusz Chojnacki on 27/06/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var scrollView = ParallaxScroll()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        
//        let view = UIView()
//        view.backgroundColor = .red
//        scrollView.contentView.addSubview(view)
//        view.snp.makeConstraints { make in
//            make.height.equalTo(90)
//            make.width.equalTo(90)
//            make.bottom.equalToSuperview().offset(-40)
//            make.centerX.equalToSuperview()
//        }
    }
}
