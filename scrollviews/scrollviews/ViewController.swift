//
//  ViewController.swift
//  scrollviews
//
//  Created by Reece Olsen on 10/7/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ScrollView.delegate = self
        
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    func updateZoomFor(size: CGSize) {
        
        let widthScale = size.width / ImageView.bounds.width
        let heightScale = size.height / ImageView.bounds.height
        let scale = min(widthScale, heightScale)
        ScrollView.minimumZoomScale = scale
        ScrollView.zoomScale = scale
        
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ImageView
    }
    
}

