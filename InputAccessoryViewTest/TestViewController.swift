import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)

        let leftButton = UIButton(type: .system)
        leftButton.frame = CGRect(x: 0, y: 0, width: 90, height: 40)
        leftButton.setTitle("Left", for: .normal)
        leftButton.layer.borderWidth = 1.0
        leftButton.layer.borderColor = UIColor.blue.cgColor

        let rightButton = UIButton(type: .system)
        rightButton.frame = CGRect(x: 100, y: 0, width: 90, height: 40)
        rightButton.setTitle("Right", for: .normal)
        rightButton.layer.borderWidth = 1.0
        rightButton.layer.borderColor = UIColor.blue.cgColor

        leftButton.addTarget(self, action: #selector(leftButtonPressed), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(rightButtonPressed), for: .touchUpInside)

        let inputAccessoryView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        inputAccessoryView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        inputAccessoryView.addSubview(leftButton)
        inputAccessoryView.addSubview(rightButton)

        textField.inputAccessoryView = inputAccessoryView

        textField.autocorrectionType = .no

        textField.inputAssistantItem.leadingBarButtonGroups = []
        textField.inputAssistantItem.trailingBarButtonGroups = []
    }

    func leftButtonPressed() {
        textField.insertText("L")
    }

    func rightButtonPressed() {
        textField.insertText("R")
    }
}
