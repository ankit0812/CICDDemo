//
//  ViewController.swift
//  CICDDemo
//
//  Created by KingpiN on 01/03/22.
//

import UIKit
import DKImagePickerController

class ViewController: UIViewController {

    @IBOutlet weak var btnImagePicker: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnImagePickerCalled(_ sender: Any) {
        let vc = DKImagePickerController()
        vc.maxSelectableCount = 20
        vc.assetType = .allPhotos
        vc.allowMultipleTypes = false
        vc.showsCancelButton = true
        vc.didSelectAssets = { [weak self](assets: [DKAsset]) in
            // self?.manipulateAndUpdateAttachmentList(assets: assets)
//            MediaEditorVC.manipulateAndUpdateImageList(assets: assets, completion: { imageDataSource in
//                LCUtils.hideLoaderFrom(view: self?.view ?? UIView())
//                self?.openImageConfirmationVc(images: imageDataSource)
//            })
            print(self)
            print(assets)
        }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

