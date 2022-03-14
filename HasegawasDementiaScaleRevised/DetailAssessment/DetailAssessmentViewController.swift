////
////  DetailAssessmentViewController.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/02/01.
////
//
//import UIKit
//
//// MARK: - DetailAssessmentViewController
//final class DetailAssessmentViewController: UIViewController {
//    private let timerFormatter = ResultTimerFormatter()
//    private let pasteboardFormatter = AssessmentResultPasteboardFormatter()
//    private let timerAssessment: TimerAssessment
//
//    @IBOutlet weak private var targetPersonLabel: UILabel! {
//        willSet (label) {
//            label.text = timerAssessment.assessmentItem?.targetPerson?.name
//        }
//    }
//    @IBOutlet weak private var assessmentItemLabel: UILabel! {
//        willSet (label) {
//            label.text = timerAssessment.assessmentItem?.name
//        }
//    }
//    @IBOutlet weak private var assessmentResultLabel: UILabel! {
//        willSet (label) {
//            label.text = timerFormatter.string(from: timerAssessment.resultTimer)
//        }
//    }
//
//    required init?(coder: NSCoder, repository: TimerAssessmentRepository, id: TimerAssessment.ID) {
//        guard let timerAssessment = repository.load(id: id) else {
//            return nil
//        }
//        self.timerAssessment = timerAssessment
//        super.init(coder: coder)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    @IBAction private func copyButton(_ sender: Any) {
//        UIPasteboard.general.string = pasteboardFormatter.string(from: timerAssessment)
//        present(UIAlertController.copyingCompletedDetailAssessment(), animated: true)
//    }
//}
