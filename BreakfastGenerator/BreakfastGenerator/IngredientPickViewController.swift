//
//  IngredientPickViewController.swift
//  BreakfastGenerator
//
//  Created by Tambre Hu on 7/14/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class IngredientPickViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var addIngredientTextField: UITextField!
    @IBOutlet weak var ingredientOptionPickView: UIPickerView!
    @IBOutlet weak var addIngredientButton: UIButton!
    
    var parentVC: IngredientViewController!
    
    var categories = ["sweet", "savory", "drink"]
    override func viewDidLoad() {
        super.viewDidLoad()

        addIngredientButton.layer.cornerRadius = 6
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addIngredientTapped(_ sender: Any) {
        switch ingredientOptionPickView.selectedRow(inComponent: 0) {
        case 0:
            parentVC.items[0].append(addIngredientTextField.text!)
        case 1:
            parentVC.items[1].append(addIngredientTextField.text!)
        case 2:
            parentVC.items[2].append(addIngredientTextField.text!)
        default:
            return
        }
        
        addIngredientTextField.text = ""
        parentVC.tableView.reloadData()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(categories[row])
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








