//
//  Extension.swift
//  GIFDemo
//
//  Created by MAC on 18/01/23.
//

import Foundation
import SDWebImage

// MARK: GIF loading extension
extension UIImageView {
    func setGif(_ url: String, completion: ((Data) -> Void)? = nil) {
        
        // set placeholder image
        self.image = UIImage(named: "loader")
        
        // background thread to load data from URL
        DispatchQueue.global(qos: .default).async {
            do {
                let gifData = try Data(contentsOf: URL(string: url) ?? URL(fileURLWithPath: ""))
                
                // assign gif to imageView
                DispatchQueue.main.async {
                    self.image = UIImage.sd_image(withGIFData: gifData)
                    completion?(gifData)
                }
            } catch {
                DispatchQueue.main.async {
                    self.image = UIImage(named: "loader")
                    completion?(Data())
                }
            }
        }
    }
}
