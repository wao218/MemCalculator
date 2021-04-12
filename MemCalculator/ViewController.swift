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
    label.textColor = .white
    label.textAlignment = .right
    label.font = .systemFont(ofSize: 100)
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
    let zeroButton = UIButton(frame: CGRect(x: 0,
                                            y: holder.frame.size.height - buttonSize,
                                            width: buttonSize * 3,
                                            height: buttonSize))
    zeroButton.backgroundColor = .white
    zeroButton.setTitleColor(.black, for: .normal)
    zeroButton.setTitle("0", for: .normal)
    zeroButton.tag = 1
    holder.addSubview(zeroButton)
    zeroButton.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    
    // Buttons 1, 2, 3
    for x in 0..<3 {
      let button1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 2),
                                              width: buttonSize,
                                              height: buttonSize))
      button1.backgroundColor = .white
      button1.setTitleColor(.black, for: .normal)
      button1.setTitle("\(x+1)", for: .normal)
      button1.tag = x + 2
      holder.addSubview(button1)
      button1.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Buttons 4, 5, 6
    for x in 0..<3 {
      let button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 3),
                                              width: buttonSize,
                                              height: buttonSize))
      button2.backgroundColor = .white
      button2.setTitleColor(.black, for: .normal)
      button2.setTitle("\(x+4)", for: .normal)
      button2.tag = x + 5
      holder.addSubview(button2)
      button2.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Buttons 7, 8, 9
    for x in 0..<3 {
      let button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 4),
                                              width: buttonSize,
                                              height: buttonSize))
      button3.backgroundColor = .white
      button3.setTitleColor(.black, for: .normal)
      button3.setTitle("\(x+7)", for: .normal)
      button3.tag = x + 8
      holder.addSubview(button3)
      button3.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    let clearButton = UIButton(frame: CGRect(x: 0,
                                            y: holder.frame.size.height - (buttonSize * 5),
                                            width: view.frame.size.width - buttonSize,
                                            height: buttonSize))
    clearButton.backgroundColor = .white
    clearButton.setTitleColor(.black, for: .normal)
    clearButton.setTitle("Clear All", for: .normal)
    holder.addSubview(clearButton)
    
  
    // Operation Buttons +, -, /, *
    let operations = ["=","+", "-", "x", "/"]
    for x in 0..<5 {
      let button4 = UIButton(frame: CGRect(x: buttonSize * 3,
                                              y: holder.frame.size.height - (buttonSize * CGFloat(x+1)),
                                              width: buttonSize,
                                              height: buttonSize))
      button4.backgroundColor = .orange
      button4.setTitleColor(.white, for: .normal)
      button4.setTitle(operations[x], for: .normal)
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

