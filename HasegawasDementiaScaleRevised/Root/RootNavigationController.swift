//
//  RootNavigationController.swift
//  TimerAssessment
//
//  Created by Takehito Koshimizu on 2022/02/15.
//

import UIKit

class RootNavigationController: UINavigationController {
    override func awakeFromNib() {
        super.awakeFromNib()
        UINavigationBar.setupAppearance()
    }
}

private extension UINavigationBar {
    static func setupAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = Colors.baseColor

        let navigationBar = self.appearance()
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance
    }
}
