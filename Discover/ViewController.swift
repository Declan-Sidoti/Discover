//
//  ViewController.swift
//  Discover
//
//  Created by Declan sidoti on 8/29/15.
//  Copyright (c) 2015 Declan.Sidoti. All rights reserved.
//
import UIKit
import MediaPlayer
import CoreLocation
import MapKit
import SystemConfiguration
import Foundation
class ViewController: UIViewController, UITableViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var discoverTableView: UITableView!
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        discoverTableView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        //discoverTableView.dataSource = self
        //discoverTableView.delegate = self
        
        
        
        
    }
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println("error")
    }
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        var userLocation:CLLocation = locations[0] as! CLLocation
        locationManager.stopUpdatingLocation()
        let location = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
        
        var fireGeoLocation: String
        
        
        fireGeoLocation = "https://data.nasa.gov/resource/mc52-syum.json?longitude_deg=\(location.longitude)latitude_deg=\(location.latitude)"
        
//        var meteorGeoLocation: location
//        
//        meteorGeoLocation = "https://data.nasa.gov/resource/gh4g-9sfh.json?geolocation=[\(location)]"
//        
//        var nameGeoLocation = "https://data.nasa.gov/resource/gh4g-9sfh.json?geolocation=[\(location)]"
//        
//        
//        
//        
//
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




