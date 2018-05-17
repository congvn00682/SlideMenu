//
//  ViewController.swift
//  SlideMenu
//
//  Created by Vu Ngoc Cong on 5/17/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedMenu: UIButton!
    
    @IBOutlet weak var leftConstraintSlideMenu: NSLayoutConstraint!
    
    var isOpenSlideMenu: Bool = false {
        didSet {
            leftConstraintSlideMenu.constant = isOpenSlideMenu ? 0 : -(UIScreen.main.bounds.width * 0.6 + 20)
            selectedMenu.isHidden = !isOpenSlideMenu
            UIView.animate(withDuration: 0.35) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        leftConstraintSlideMenu.constant = -(UIScreen.main.bounds.width * 0.6 + 20)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickMenuButton(_ sender: UIBarButtonItem) {
        isOpenSlideMenu = !isOpenSlideMenu
    }
    
    @IBAction func onclickCoverButton(_ sender: UIButton) {
        isOpenSlideMenu = !isOpenSlideMenu
    }
    
}

