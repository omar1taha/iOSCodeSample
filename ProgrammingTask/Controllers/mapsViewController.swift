//
//  mapsViewController.swift
//  ProgrammingTask
//
//  Created by Apple on 5/2/20.
//  Copyright © 2020 uaebarq. All rights reserved.
//

import UIKit
import MapKit

class mapsViewController: UIViewController, MKMapViewDelegate{

    var center : CLLocationCoordinate2D?
    
    @IBOutlet weak var locLbl: UILabel!
    
    @IBOutlet weak var mapae: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mapae.delegate = self
        self.mapStartPosition()
        // Do any additional setup after loading the view.
    }
    

    func mapStartPosition() {
        //25.265402,55.492970
        let latitude: CLLocationDegrees = 25.265402
        let longitude: CLLocationDegrees = 55.492970
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
       
        self.mapae.setRegion(regionSpan, animated: true)
    }

    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        self.center = mapView.centerCoordinate
        self.locLbl.text = "Lat:\(String(format: "%.2f", center?.latitude ?? 0.0)) Long:\(String(format: "%.2f", center?.longitude ?? 0.0))"
    }
    /*
     //String(format: "%.2f", currentRatio)
 MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
