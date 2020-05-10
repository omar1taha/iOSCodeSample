//
//  ViewController.swift
//  ProgrammingTask
//
//  Created by Apple on 5/2/20.
//  Copyright © 2020 uaebarq. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var videosViewModel : videosViewModel!

    @IBOutlet weak var videoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Barq.ae"
        
        let nib = UINib.init(nibName: String(describing: videoTableViewCell.self), bundle: nil)
        self.videoTableView.register(nib, forCellReuseIdentifier: "videoCell")
        
        self.getVideos()
        
    }
    
    
    //................................................GetVides...............................................................

    func getVideos(){
        self.videosViewModel.getAllVideos(onSuccess: { (isSuccess) in
            
            if isSuccess{
                self.videoTableView.reloadData()
            }
            
        }) { (errorMsg) in
            AlertViewer().showAlertView(withMessage: errorMsg ?? "", onController: self)
        }
    }
    
    
    
    //................................................TableViewFuncs...............................................................
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.videosViewModel.videosArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let videoCell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! videoTableViewCell
        videoCell.videoLbl.text = self.videosViewModel.videosArr[indexPath.row].title
        videoCell.videoSubLbl.text = self.videosViewModel.videosArr[indexPath.row].url
        return videoCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    

}

