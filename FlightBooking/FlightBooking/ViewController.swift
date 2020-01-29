import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    
    var buttonTag:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false{
            selectDatePicker.isHidden = true
        }
        else{
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
//        print(sender.description!)
//        if (sender as! UISwitch).isOn {
//            returnDateButton.isHidden = false
//            returnDateLabel.isHidden = false
//        }
//        else {
//            returnDateButton.isHidden = true
//            returnDateLabel.isHidden = true
//        }
        
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
        
    }
    @IBAction func selectedDataAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"

        
        let dateString = formatter.string(from : sender.date)
        //같은 액션을 공유할때 tag값에따라서 똑같은 액션에서 다른곳에 값을주기
        if buttonTag == 1 {
               departureDateButton.setTitle(dateString, for: UIControl.State.normal)
            print(dateString)
            }
        else {
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
        }
        
        
        
        formatter.string(from: sender.date)
        print(formatter.string(from: sender.date))
        
    }
    //바탕화면 눌렀을때 PickerView를 없애줌.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) // 바탕화면 눌렀을때 키보드가 내려가게 하는거
        selectDatePicker.isHidden = true
    }
    

}

