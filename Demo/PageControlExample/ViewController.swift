//
//  ViewController.swift
//  PageControlExample
//
//  Created by Demian Turner on 01/05/2020.
//  Copyright © 2021 Demian Turner. All rights reserved.
//

import Cocoa
import DTPageControl

class ViewController: NSViewController {
    
    private var pageControl: DTPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPageControl()
    }
    
    // MARK: - private

    private func setupPageControl() {
        pageControl = DTPageControl()
        pageControl.numberOfPages = 4
        let width: CGFloat = 200
        let x: CGFloat = (view.frame.width - width) / 2
        pageControl.frame = CGRect(x: x, y: 20, width: 200, height: 20)
        view.addSubview(pageControl)
    }

    // MARK: - IBAction

    @IBAction func tapPreviousButton(_ sender: NSButton) {
        pageControl.currentPage -= 1
    }

    @IBAction func tapNextButton(_ sender: NSButton) {
        pageControl.currentPage += 1
    }
}

