//
//  ViewController.swift
//  GradesFunctionLim
//
//  Created by Temporary on 9/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputOutlet: UILabel!
    @IBOutlet weak var scoreOutlet: UITextField!
    @IBOutlet weak var totalOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    func getGrade(score: Double, total: Double) -> (Double, Character) {
        let percentage = score/total
        switch percentage {
        case 0.9...:
            return (percentage, "A")
        case 0.8...0.9:
            return (percentage, "B")
        case 0.7...0.8:
            return (percentage, "C")
        case 0.6...0.7:
            return (percentage, "D")
        default:
            return (percentage, "F")
        }
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        let output = getGrade(score: Double(scoreOutlet.text!) ?? 0, total: Double(totalOutlet.text!) ?? 0.0001)
        print(output)
        outputOutlet.text = "Percentage: \(output.0 * 100)% \t Grade: \(output.1)"
    }
    
    


}

