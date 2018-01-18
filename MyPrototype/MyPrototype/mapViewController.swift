//
//  mapViewController.swift
//  MyPrototype
//
//  Created by 오지연 on 2018. 1. 16..
//  Copyright © 2018년 mim. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    var selectedIndex: Int? = nil
    var cat: CatMap? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let _ = selectedIndex {
            mapView.setRegion(MKCoordinateRegionMake((self.cat?.coordinate)!, MKCoordinateSpanMake(0.007, 0.007)), animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToChooseCat" {
        if let destVC = segue.destination as? CatListTableViewController {
            destVC.mainVC = self
        }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
