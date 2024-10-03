//
//  ViewController.swift
//  bubilet-homepage-clone
//
//  Created by Esra Türk on 30.09.2024.
//

import UIKit

class Homepage: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var searchTextField: UIImageView!
    @IBOutlet weak var eventButton: UIButton!
    @IBOutlet weak var theaterButton: UIButton!
    @IBOutlet weak var festivalButton: UIButton!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var labelEvent: UILabel!
    @IBOutlet weak var eventsCollectionView: UICollectionView!
    
    var sliderImages: [UIImage] = []
    var currentIndex: Int = 0
    var timer: Timer?
    
    var eventsList: [Events] {
        return EventsDataSource.shared.eventsList
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.bringSubviewToFront(searchTextField)
        labelEvent.font = UIFont(name: "Montserrat-Regular", size: 19)
        
        eventsCollectionView.delegate = self
        eventsCollectionView.dataSource = self
        
        let cellDesign = UICollectionViewFlowLayout()
        cellDesign.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 30, right: 10)
        cellDesign.minimumInteritemSpacing = 5
        cellDesign.minimumLineSpacing = 5
        
        //10 x 5 x 10
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 25) / 2
        
        cellDesign.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.35)
        eventsCollectionView.collectionViewLayout = cellDesign
        

        sliderImages = [
            UIImage(named: "1ay-ucretsiz-gain-uyeligi")!,
            UIImage(named: "izmir-kulturpark-acikhava-tiyatrosu")!,
            UIImage(named: "ooze-venue-ooze")!,
            UIImage(named: "hangout-psm")!,
            UIImage(named: "alsancak-tarihi-havagazi-fabrikasi-kultur-merkezi")!,
            UIImage(named: "hayal-kahvesi-izmir")!,
            UIImage(named: "soldout-performance-hall")!,
            UIImage(named: "trendler")!,
            UIImage(named: "istinyeart-100-performans-arena")!,
        ]
        
        setupScrollView()
        startTimer()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let buttons = [eventButton, theaterButton, festivalButton]
        
        for button in buttons {
            button?.layer.shadowColor = UIColor.black.cgColor
            button?.layer.shadowOffset = CGSize(width: 0, height: 4)
            button?.layer.shadowRadius = 5
            button?.layer.shadowOpacity = 0.3
        }
    }
    

    func setupScrollView() {
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(sliderImages.count), height: scrollView.frame.height)
        
        for (index, image) in sliderImages.enumerated() {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.frame = CGRect(x: scrollView.frame.width * CGFloat(index), y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
            scrollView.addSubview(imageView)
        }
    }

    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(slideToNextImage), userInfo: nil, repeats: true)
    }

    @objc func slideToNextImage() {
        currentIndex = (currentIndex + 1) % sliderImages.count
        let newOffset = CGPoint(x: scrollView.frame.width * CGFloat(currentIndex), y: 0)
        
        UIView.animate(withDuration: 0.5) {
            self.scrollView.setContentOffset(newOffset, animated: true)
        }
    }

    deinit {
        timer?.invalidate()
    }


}

extension Homepage: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = eventsCollectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventsCell
        
        let event = eventsList[indexPath.row]
        
        cell.imageViewEvent.image = UIImage(named: event.photo!)
        cell.labelPerformer.text = "\(event.name!)"
        cell.placeLabel.text = "\(event.place!)"
        cell.dateLabel.text = "\(event.date!)"
        cell.priceButton.setTitle("\(event.price!)0 TL", for: .normal)
        cell.sittingArea.isHidden = !(event.sittingArea!) //etkinlik alanında oturma düzeni yoksa sittingArea iconunu gizler
        
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        
        return cell
    }

}
