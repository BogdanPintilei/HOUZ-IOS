//
//  CameraViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Gallery
import Hero
import Lightbox

class CameraViewController: UIViewController {

    @IBOutlet weak var addProductButtonCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var closeButtonLeftConstraint: NSLayoutConstraint!

    var gallery: GalleryController!
    let editor: VideoEditor = VideoEditor()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.addProductButtonCenterConstraint.constant = UIScreen.main.bounds.size.height
        self.closeButtonLeftConstraint.constant = -UIScreen.main.bounds.size.height
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateView()
    }

    @IBAction func post(_ sender: Any) {
        gallery = GalleryController()
        gallery.delegate = self
        Config.Camera.imageLimit = 1
        present(gallery, animated: true, completion: nil)
    }

    @IBAction func addProduct(_ sender: Any) {
        self.showToast(withMessage: "This feature will be comming soon :)")
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    private func animateView() {
        self.addProductButtonCenterConstraint.constant = 0
        self.closeButtonLeftConstraint.constant = 16
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
}

// MARK: - GalleryControllerDelegate

extension CameraViewController: GalleryControllerDelegate {


    func galleryControllerDidCancel(_ controller: GalleryController) {
        controller.dismiss(animated: true, completion: nil)
        gallery = nil
    }

    func galleryController(_ controller: GalleryController, didSelectVideo video: Video) {
        CreateNavigator().present(screen: .post, from: controller)
    }

    func galleryController(_ controller: GalleryController, didSelectImages images: [Image]) {
        CreateNavigator().present(screen: .post, from: controller)
    }

    func galleryController(_ controller: GalleryController, requestLightbox images: [Image]) {
    }

}
