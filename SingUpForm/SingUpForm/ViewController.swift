//
//  ViewController.swift
//  SingUpForm
//
//  Created by 이규민 on 2020/01/24.
//  Copyright © 2020 quokka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PassWordTextField: UITextField!
    @IBOutlet weak var TelTextField: UITextField!
    @IBOutlet weak var BlogTextField: UITextField!
    @IBOutlet weak var OutputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //NameTextField.delegate = self
        //EmailTextField.delegate = self
        // Storyboard에서 TextField들을 ViewController에 delegate써주는것과 똑같은 역할을 한다.
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // 키보드 return key누르면 키보드가 밑으로 내려가게 설정해주는거
//        NameTextField.resignFirstResponder()
//        EmailTextField.resignFirstResponder()
//        PassWordTextField.resignFirstResponder()
//        TelTextField.resignFirstResponder()
//        BlogTextField.resignFirstResponder()
//        원래 이렇게 다 작성해줘야하는데 textFieldShouldReuturn 함수의 Apple문서의
//        textField Parameter의 설명이 이렇다.
//        The text field whose return button was pressed.
//         리턴 버튼이 눌러진 텍스트 필드. 그러므로 이렇게 한번에 쓸수있다.

        return true
    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) // 키보드가 비활성화됨.
    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesBegan")
//    } 터치를 시작했을때 이 메서드가 작동한다.
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesMoved")
//    } 터치하고 움직일때마다 이 메서드가 작동한다.
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesEnded")
//    } 터치를 끝냈을때 이 메서드가 작동한다.
    @IBAction func SignUpAcition(_ sender: Any) {
        OutputTextView.text = "\(NameTextField.text)님 가입을 축하합니다."
    }
}

