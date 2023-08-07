//
//  ParallaxScroll.swift
//  parallax
//
//  Created by Mateusz Chojnacki on 28/06/2023.
//

import UIKit
import SnapKit

class ParallaxScroll: UIScrollView, UIScrollViewDelegate {
    
    var contentView: UIView!
    var backgroundImageView: UIImageView!
    var backgroundGradientImageView: UIImageView!
    var backgroundPaternImageView: UIImageView!

    
    init() {
        super.init(frame: .zero)
        setupBackground()
        delegate = self
    }
    
    func setupBackground() {
        
        contentView = UIView()
        addSubview(contentView)
    
        backgroundPaternImageView = UIImageView(image: UIImage(named: "gradientBackground"))
        contentView.addSubview(backgroundPaternImageView)
        
        backgroundImageView = UIImageView(image: UIImage(named: "background2"))
        contentView.addSubview(backgroundImageView)
        
        
        backgroundGradientImageView = UIImageView(image: UIImage(named: "backgroundImage"))
        contentView.addSubview(backgroundGradientImageView)
        // Set up constraints
        
        
        
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        backgroundImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        backgroundGradientImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        backgroundPaternImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        // Enable scrolling and zooming
        isScrollEnabled = true
        minimumZoomScale = 1.0
        maximumZoomScale = 3.0
        showsVerticalScrollIndicator = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Calculate the parallax offset based on the scroll offset
        let parallaxOffset = scrollView.contentOffset.y / 2
        
        // Update the position or transform of the background view
        backgroundImageView.transform = CGAffineTransform(translationX: 0, y: parallaxOffset)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        // Return the content view to enable zooming
        return contentView
    }
}
