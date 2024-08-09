//
//  SliderViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import Foundation
import UIKit

class SliderViewController: UIViewController {
    private lazy var slider: UISlider = {
        let result = UISlider()
        result.translatesAutoresizingMaskIntoConstraints = false
        result.minimumValue = 0
        result.maximumValue = 1
        result.isContinuous = true
        result.value = 0
        result.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        return result
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(slider)
        NSLayoutConstraint.activate([
            slider.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
            slider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            slider.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
    
    @objc private func sliderValueChanged(_ sender: Any) {
        sliderValueUpdated(value: slider.value)
    }
    
    open func sliderValueUpdated(value: Float) {}
}
