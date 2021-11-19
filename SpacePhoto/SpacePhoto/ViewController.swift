//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Reece Olsen on 11/15/21.
//

import UIKit

class ViewController: UIViewController {
    var networkController = PhotoInfoController()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var copyrightLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        networkController.fetchPhotoInfo { result in
            switch result {
            case .success(let photoInfo):
                DispatchQueue
                self.title
            }
            
        }
    }


}

