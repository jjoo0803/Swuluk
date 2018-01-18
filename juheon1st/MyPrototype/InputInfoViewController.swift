//
//  InputInfoViewController.swift
//  MyPrototype
//
//  Created by 오지연 on 2018. 1. 11..
//  Copyright © 2018년 mim. All rights reserved.
//

import UIKit
import Foundation

class InputInfoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    //let catInfo = [["name":"랑이", "photo":UIImage.init(named:"")!], ["name":"랑이", "photo":UIImage.init(named:"")!], ["name":"랑이", "photo":UIImage.init(named:"")!], ["name":"랑이", "photo":UIImage.init(named:"")!]]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    let location = ["50주년 기념관", "인문사회관", "누리관", "제1과학관", "제2과학관", "조형예술관", "기숙사", "행정관" , "바롬관"]
    
    let food = ["사료", "물", "간식"]
    
    let stress = ["낮음", "보통", "많음"]
    

    @IBOutlet weak var detailScrollView: UIScrollView!
    @IBOutlet weak var detailView: UIView!
    
    
    @IBOutlet var location_text: UITextField!
    @IBOutlet var food_text: UITextField!
    @IBOutlet var stress_text: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.contentSize = CGSize(width: 618, height: 110)
        
        // userInput1.text = "사용자입력값"
        // userInput2.text = "사용자입력값"
        // userInput3.text = "사용자입력값"
        
        self.detailScrollView.contentSize = detailView.frame.size
        
        
        // 위치
        let locationPickerView = UIPickerView()
        
        locationPickerView.delegate = self
        locationPickerView.dataSource = self
        
        locationPickerView.tag = 1
        
        location_text?.inputView = locationPickerView
        
        
        // 버튼 생성
        let btn = UIButton.init(type: .roundedRect)
        
        btn.frame = CGRect(x: 260, y: 0, width: 50, height: 40)
        
        btn.tintColor = UIColor.white
        
        btn.setTitle("Done", for: .normal)
        
        let v = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        
        v.addSubview(btn)
        
        v.backgroundColor = UIColor.gray
        
        location_text?.inputAccessoryView = v

        
        btn.addTarget(self, action: #selector(pressok), for: .touchUpInside)
        
        
        // 먹이
        let foodPickerView = UIPickerView()

        foodPickerView.delegate = self
        foodPickerView.dataSource = self

        foodPickerView.tag = 2

        food_text?.inputView = foodPickerView
        
        food_text?.inputAccessoryView = v
        
        
        // 스트레스
        let stressPickerView = UIPickerView()
        
        stressPickerView.delegate = self
        stressPickerView.dataSource = self
        
        stressPickerView.tag = 3
        
        stress_text?.inputView = stressPickerView
        stress_text?.inputAccessoryView = v
        
    }
    
    @objc func pressok() {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView.tag == 1 {
            
            return location.count
            
        }
        
        if pickerView.tag == 2 {
            
            return food.count
            
        }
        
        if pickerView.tag == 3 {
            
            return stress.count
            
        }
        
        return 0
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView.tag == 1 {
            
            return location[row]
            
        }
        
        if pickerView.tag == 2 {
            
            return food[row]
            
        }
        
        if pickerView.tag == 3 {
            
            return stress[row]
            
        }
        
        return nil
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView.tag == 1 {
            
            location_text.text = location[row]
            
        }
        
        if pickerView.tag == 2 {
            
            food_text.text = food[row]
            
        }
        
        if pickerView.tag == 3 {
    
            stress_text.text = stress[row]
            
        }
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }
    
    
}


