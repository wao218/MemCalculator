//
//  ViewController.swift
//  MemCalculator
//
//  Created by Wesley Osborne on 4/11/21.
//

import UIKit

class ViewController: UIViewController {
  
  var firstNumber = 0
  var resultNumber = 0
  var currentOperation: Operation?
  
  enum Operation {
    case add, subtract, multiply, divide
  }
  
  // MARK: - UI Elements
  @IBOutlet var holder: UIView!
  
  private var resultLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = UIColor(named: "operationColor")
    label.textAlignment = .right
    label.font = .systemFont(ofSize: 100)
//    label.layer.borderWidth = 1
//    label.layer.borderColor = UIColor.black.cgColor
    return label
  }()
  
  // MARK: - Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    setupCalculator()
  }
  
  // MARK: - Helper Methods
  private func setupCalculator() {
    let buttonSize: CGFloat = view.frame.size.width / 4
    let zeroButton = UIButton(frame: CGRect(x: holder.frame.origin.x + 10,
                                            y: holder.frame.size.height - buttonSize,
                                            width: (buttonSize * 3) - 20,
                                            height: buttonSize - 20))
    zeroButton.backgroundColor = UIColor(named: "backgroundColor")
    zeroButton.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    zeroButton.setTitle("0", for: .normal)
    zeroButton.titleLabel?.font = .systemFont(ofSize: 30)
    zeroButton.layer.cornerRadius = buttonSize / 6
    zeroButton.layer.shadowColor = UIColor.black.cgColor
    zeroButton.layer.shadowOpacity = 0.05
    zeroButton.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    zeroButton.layer.shadowRadius = 5
    zeroButton.tag = 1
    holder.addSubview(zeroButton)
    zeroButton.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    
    // Buttons 1, 2, 3
    for x in 0..<3 {
      let button1 = UIButton(frame: CGRect(x: (buttonSize * CGFloat(x)) + 10 ,
                                              y: holder.frame.size.height - (buttonSize * 2),
                                              width: buttonSize - 20,
                                              height: buttonSize - 20))
      button1.backgroundColor = UIColor(named: "backgroundColor")
      button1.setTitleColor(UIColor(named: "operationColor"), for: .normal)
      button1.setTitle("\(x+1)", for: .normal)
      button1.titleLabel?.font = .systemFont(ofSize: 30)
      button1.layer.cornerRadius = buttonSize / 6
      button1.layer.shadowColor = UIColor.black.cgColor
      button1.layer.shadowOpacity = 0.05
      button1.layer.shadowOffset = CGSize(width: 0.0, height: 3)
      button1.layer.shadowRadius = 5
      button1.tag = x + 2
      holder.addSubview(button1)
      button1.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Buttons 4, 5, 6
    for x in 0..<3 {
      let button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x) + 10,
                                              y: holder.frame.size.height - (buttonSize * 3),
                                              width: buttonSize - 20,
                                              height: buttonSize - 20))
      button2.backgroundColor = UIColor(named: "backgroundColor")
      button2.setTitleColor(UIColor(named: "operationColor"), for: .normal)
      button2.setTitle("\(x+4)", for: .normal)
      button2.titleLabel?.font = .systemFont(ofSize: 30)
      button2.layer.cornerRadius = buttonSize / 6
      button2.layer.shadowColor = UIColor.black.cgColor
      button2.layer.shadowOpacity = 0.05
      button2.layer.shadowOffset = CGSize(width: 0.0, height: 3)
      button2.layer.shadowRadius = 5
      button2.tag = x + 5
      holder.addSubview(button2)
      button2.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Buttons 7, 8, 9
    for x in 0..<3 {
      let button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x) + 10,
                                              y: holder.frame.size.height - (buttonSize * 4),
                                              width: buttonSize - 20,
                                              height: buttonSize - 20))
      button3.backgroundColor = UIColor(named: "backgroundColor")
      button3.setTitleColor(UIColor(named: "operationColor"), for: .normal)
      button3.setTitle("\(x+7)", for: .normal)
      button3.titleLabel?.font = .systemFont(ofSize: 30)
      button3.layer.cornerRadius = buttonSize / 6
      button3.layer.shadowColor = UIColor.black.cgColor
      button3.layer.shadowOpacity = 0.05
      button3.layer.shadowOffset = CGSize(width: 0.0, height: 3)
      button3.layer.shadowRadius = 5
      button3.tag = x + 8
      holder.addSubview(button3)
      button3.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    let clearButton = UIButton(frame: CGRect(x: holder.frame.origin.x + 10,
                                            y: holder.frame.size.height - (buttonSize * 5),
                                            width: view.frame.size.width - buttonSize - 20,
                                            height: buttonSize - 20))
    clearButton.backgroundColor = UIColor(named: "backgroundColor")
    clearButton.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    clearButton.setTitle("Clear All", for: .normal)
    clearButton.titleLabel?.font = .systemFont(ofSize: 30)
    holder.addSubview(clearButton)
    
  
    // Operation Buttons +, -, /, *
    let operations = ["=","+", "-", "x", "/"]
    for x in 0..<5 {
      let button4 = UIButton(frame: CGRect(x: buttonSize * 3,
                                              y: holder.frame.size.height - (buttonSize * CGFloat(x+1)),
                                              width: buttonSize - 20,
                                              height: buttonSize - 20))
      button4.backgroundColor = UIColor(named: "backgroundColor")
      button4.setTitleColor(UIColor(named: "accents"), for: .normal)
      button4.setTitle(operations[x], for: .normal)
      button4.titleLabel?.font = .systemFont(ofSize: 30)
      
      if operations[x] == "=" {
        button4.layer.cornerRadius = buttonSize / 6
        button4.layer.shadowColor = UIColor.black.cgColor
        button4.layer.shadowOpacity = 0.05
        button4.layer.shadowOffset = CGSize(width: 0.0, height: 3)
        button4.layer.shadowRadius = 5
      }
      button4.tag = x + 1
      holder.addSubview(button4)
      button4.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
    }
    
    resultLabel.frame = CGRect(x: 20,
                               y: clearButton.frame.origin.y - 110.0,
                               width: view.frame.size.width - 40,
                               height: 100)
    holder.addSubview(resultLabel)
    
    // Actions
    clearButton.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
  }
  
  @objc func clearResult() {
    resultLabel.text = "0"
    currentOperation = nil
    firstNumber = 0
  }
  
  @objc func numberPressed(_ sender: UIButton) {
    let tag = sender.tag - 1
    
    if resultLabel.text == "0" {
      resultLabel.text = "\(tag)"
    } else {
      guard let text = resultLabel.text else {
        return
      }
      resultLabel.text = "\(text)\(tag)"
    }
  }
  
  @objc func operationPressed(_ sender: UIButton) {
    let tag = sender.tag
    
    if let text = resultLabel.text, let value = Int(text), firstNumber == 0 {
      firstNumber = value
      resultLabel.text = "0"
    }
    
    switch tag {
    case 1:
      if let operation = currentOperation {
        var secondNumber = 0
        if let text = resultLabel.text, let value = Int(text) {
          secondNumber = value
        }
        switch operation {
        case .add:
          let result = firstNumber + secondNumber
          resultLabel.text = "\(result)"
          break
        case .subtract:
          let result = firstNumber - secondNumber
          resultLabel.text = "\(result)"
          break
        case .multiply:
          let result = firstNumber * secondNumber
          resultLabel.text = "\(result)"
          break
        case .divide:
          let result = firstNumber / secondNumber
          resultLabel.text = "\(result)"
          break
        }
      }
    case 2:
      currentOperation = .add
    case 3:
      currentOperation = .subtract
    case 4:
      currentOperation = .multiply
    case 5:
      currentOperation = .divide
    default:
      break
    }
  }
  
  
}

