//
//  SelectGifVC.swift
//  GIFDemo
//
//  Created by MAC on 18/01/23.
//

import UIKit

final class SelectGifVC: UIViewController {
    
    @IBOutlet private weak var gifCollectionView: UICollectionView!
    
    private var displayGifs = ["https://media.giphy.com/media/7YrnYstmGxYFa/giphy.gif?cid=ecf05e4796kf3zx2jryugaarl79d7kd9b4ru4k6f31ycahkl&rid=giphy.gif&ct=g", "https://media.giphy.com/media/duzpaTbCUy9Vu/giphy.gif?cid=ecf05e47t8mntohje5x29yiurpb2kotpfcwe8l19xls67tkk&rid=giphy.gif&ct=g", "https://media.giphy.com/media/l0ExuxfBIOqXyeCn6/giphy.gif?cid=ecf05e47t8mntohje5x29yiurpb2kotpfcwe8l19xls67tkk&rid=giphy.gif&ct=g", "https://media.giphy.com/media/xT5LMVKCjhlKlhkdJm/giphy.gif?cid=ecf05e47t8mntohje5x29yiurpb2kotpfcwe8l19xls67tkk&rid=giphy.gif&ct=g", "https://media.giphy.com/media/1M9fmo1WAFVK0/giphy.gif?cid=ecf05e4796kf3zx2jryugaarl79d7kd9b4ru4k6f31ycahkl&rid=giphy.gif&ct=g", "https://media.giphy.com/media/xTiIzJSKB4l7xTouE8/giphy.gif?cid=ecf05e47s920ykie961x77xbbnlfzahla27vvft1gkach60z&rid=giphy.gif&ct=g", "https://media.giphy.com/media/Dt4ReTH8TrUkB2WWbV/giphy.gif?cid=ecf05e47bdiqlnf9sizdppa02ie6hd1je3u7cy5og60fze37&rid=giphy.gif&ct=g", "https://media.giphy.com/media/l1IY4Jie4dzbl7yqQ/giphy.gif?cid=ecf05e47bdiqlnf9sizdppa02ie6hd1je3u7cy5og60fze37&rid=giphy.gif&ct=g", "https://media.giphy.com/media/qgcr4xCumRRqLyN6ia/giphy.gif?cid=ecf05e47bdiqlnf9sizdppa02ie6hd1je3u7cy5og60fze37&rid=giphy.gif&ct=g", "https://media.giphy.com/media/FnXg4Kxk6aQLURzkkj/giphy.gif?cid=ecf05e47bdiqlnf9sizdppa02ie6hd1je3u7cy5og60fze37&rid=giphy.gif&ct=g", "https://media.giphy.com/media/776jsDbakKdZS/giphy.gif?cid=ecf05e47sm8wa91nsr3dn8qaqqh28evvguba690b9v2thdmw&rid=giphy.gif&ct=g"]

    override func viewDidLoad() {
        super.viewDidLoad()
        gifCollectionView.register(UINib(nibName: "GifCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GifCollectionViewCell")
    }
}

extension SelectGifVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        displayGifs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GifCollectionViewCell", for: indexPath) as! GifCollectionViewCell
        cell.gifImg.setGif(displayGifs[indexPath.row])
        return cell
    }
}
