////
////  InputAssessmentItemViewController.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/01/31.
////
//
//import UIKit
//
//final class InputAssessmentItemViewController: UIViewController {
//    typealias Mode = InputMode<TargetPerson.ID, AssessmentItem>
//
//    private let mode: Mode
//    private let repository: AssessmentItemRepository
//    @IBOutlet weak private var assessmentItemNameTextField: UITextField! {
//        willSet(textField) {
//            textField.text = mode.value?.name
//        }
//    }
//
//    required init?(coder: NSCoder, repository: AssessmentItemRepository, mode: Mode) {
//        self.mode = mode
//        self.repository = repository
//        super.init(coder: coder)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    // MARK: - 対象者データを保存するUIButtonのIBAction
//    @IBAction private func saveAction(_ sender: Any) {
//        save(name: assessmentItemNameTextField.text, sender: sender)
//    }
//
//    @IBAction private func selectedButtonList(sender: AssessmentItemButton) {
//        save(name: sender.title, sender: sender)
//    }
//
//    private func save(name: String?, sender: Any) {
//        let name = name ?? ""
//        switch mode {
//        case .input(let id):
//            repository.add(value: .init(name: name), id: id)
//        case .edit(var value):
//            value.name = name
//            repository.update(value: value)
//        }
//        performSegue(withIdentifier: "back", sender: sender)
//    }
//}
