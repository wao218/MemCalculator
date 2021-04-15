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
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private var workingResultLabel: UILabel = {
    let label = UILabel()
    label.text = ""
    label.textColor = UIColor(named: "operationColor")
    label.textAlignment = .right
    label.font = .systemFont(ofSize: 100)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  private var zeroButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("0", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 0
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var oneButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("1", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var twoButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("2", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 2
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var threeButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("3", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 3
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var fourButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("4", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 4
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var fiveButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("5", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var sixButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("6", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 6
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var sevenButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("7", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 7
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var eightButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("8", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 8
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var nineButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("9", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 9
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var clearButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("Clear", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var equalButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("=", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var addButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("+", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.tag = 2
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var subtractButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("-", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.tag = 3
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var multiplyButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("*", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.tag = 4
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var divideButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("/", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.tag = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var firstRowButtonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.distribution = .fill
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var secondRowButtonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.distribution = .fillEqually
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var thirdRowButtonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.distribution = .fillEqually
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var fourthRowButtonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.distribution = .fillEqually
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var fifthRowButtonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.distribution = .fill
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var buttonPadContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .fillEqually
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private var labelsContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .fillEqually
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  
  // MARK: - Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    addTargets()
    layoutSubViews()
    setupContraints()
    let buttonSize: CGFloat = view.frame.size.width / 4
    print(buttonSize)
    print(view.frame.size.width)
    print(view.frame.size.height)
  }
  
  // MARK: - Helper Methods
  
  private func layoutSubViews() {
    
    holder.addSubview(labelsContainer)
    holder.addSubview(buttonPadContainer)
    
    labelsContainer.addArrangedSubview(workingResultLabel)
    labelsContainer.addArrangedSubview(resultLabel)
    
    
    buttonPadContainer.addArrangedSubview(firstRowButtonContainer)
    buttonPadContainer.addArrangedSubview(secondRowButtonContainer)
    buttonPadContainer.addArrangedSubview(thirdRowButtonContainer)
    buttonPadContainer.addArrangedSubview(fourthRowButtonContainer)
    buttonPadContainer.addArrangedSubview(fifthRowButtonContainer)
    
    
    firstRowButtonContainer.addArrangedSubview(clearButton)
    firstRowButtonContainer.addArrangedSubview(divideButton)
    
    secondRowButtonContainer.addArrangedSubview(sevenButton)
    secondRowButtonContainer.addArrangedSubview(eightButton)
    secondRowButtonContainer.addArrangedSubview(nineButton)
    secondRowButtonContainer.addArrangedSubview(multiplyButton)
    
    thirdRowButtonContainer.addArrangedSubview(fourButton)
    thirdRowButtonContainer.addArrangedSubview(fiveButton)
    thirdRowButtonContainer.addArrangedSubview(sixButton)
    thirdRowButtonContainer.addArrangedSubview(subtractButton)
    
    fourthRowButtonContainer.addArrangedSubview(oneButton)
    fourthRowButtonContainer.addArrangedSubview(twoButton)
    fourthRowButtonContainer.addArrangedSubview(threeButton)
    fourthRowButtonContainer.addArrangedSubview(addButton)
    
    fifthRowButtonContainer.addArrangedSubview(zeroButton)
    fifthRowButtonContainer.addArrangedSubview(equalButton)
    
    
        
  }
  
  private func addTargets() {
    // Number Targets
    let numButtons = [zeroButton, oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton]
    for numButton in numButtons {
      numButton.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Operation Targets
    let operations = [equalButton, addButton, subtractButton, multiplyButton, divideButton]
    
    for operation in operations {
      operation.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
    }
    
    // Clear Target
    clearButton.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
  }
  
  private func setupContraints() {
    
    buttonPadContainer.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor).isActive = true
    holder.layoutMarginsGuide.trailingAnchor.constraint(equalTo: buttonPadContainer.trailingAnchor).isActive = true
    holder.bottomAnchor.constraint(equalTo: buttonPadContainer.bottomAnchor).isActive = true
    
    labelsContainer.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor).isActive = true
    holder.layoutMarginsGuide.trailingAnchor.constraint(equalTo: labelsContainer.trailingAnchor).isActive = true
    labelsContainer.topAnchor.constraint(equalTo: holder.topAnchor).isActive = true
    
    buttonPadContainer.topAnchor.constraint(equalTo: labelsContainer.bottomAnchor, constant: 8).isActive = true
    
    buttonPadContainer.heightAnchor.constraint(equalTo: labelsContainer.heightAnchor, multiplier: 2).isActive = true
    
    divideButton.widthAnchor.constraint(equalTo: oneButton.widthAnchor).isActive = true
    
    equalButton.widthAnchor.constraint(equalTo: oneButton.widthAnchor).isActive = true
    
    
  }
  
  
  @objc func clearResult() {
    resultLabel.text = "0"
    currentOperation = nil
    firstNumber = 0
  }
  
  @objc func numberPressed(_ sender: UIButton) {
    let tag = sender.tag
    
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
          workingResultLabel.text = "\(result)"
          resultLabel.text = "0"
        case .subtract:
          let result = firstNumber - secondNumber
          workingResultLabel.text = "\(result)"
          resultLabel.text = "0"
        case .multiply:
          let result = firstNumber * secondNumber
          workingResultLabel.text = "\(result)"
          resultLabel.text = "0"
        case .divide:
          let result = firstNumber / secondNumber
          workingResultLabel.text = "\(result)"
          resultLabel.text = "0"
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

