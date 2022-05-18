//
//  ViewController.swift
//  sample video play
//
//  Created by Sina Taherkhani on 8/28/1400 AP.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let manager = FileManager.default
        guard let url = try! manager.urls(for: .documentDirectory, in: .userDomainMask).first else{ return }
        print(url.absoluteURL)
//        let newFolderUrl = url.appendingPathComponent("com.sina.sample-video-play")
//        do {
//            try manager.createDirectory(at: newFolderUrl, withIntermediateDirectories: true, attributes: nil)
//        } catch let error {
//            print(error.localizedDescription)
//        }
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        do {
            let player = try AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "robbit", ofType: "mp4")!))
    //      For animate background usefull
    //        let layer = AVPlayerLayer(player: player)
    //        layer.videoGravity = .resizeAspectFill
    //        layer.frame = view.bounds
    //        view.layer.addSublayer(layer)
    //        player.volume = 0
    //        player.play()
            let vc = AVPlayerViewController()
            vc.player = player
            present(vc, animated: true)
        } catch let error {
            print(error.localizedDescription)
        }
        
    }

}

