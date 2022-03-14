////
////  AssessmentViewController.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/02/01.
////
//
//import UIKit
//
//final class AssessmentViewController: UIViewController {
//    private let formatter = TimerFormatter()
//    private let assessmentItem: AssessmentItem
//    private let repository: TimerAssessmentRepository
//    private lazy var disPlayLink = DisplayLinkWrapper { [weak self] sender in
//        self?.mode.continueRunning(timestamp: sender.timestamp)
//    }
//    private var mode: TimerMode = .notRunning {
//        didSet (oldMode) {
//            switch mode {
//            case .running where !oldMode.isRunning:
//                disPlayLink.add(runloop: .main, forMode: .common)
//            case .running:
//                break
//            case .notRunning, .pausing:
//                disPlayLink.invalidate()
//            }
//            timerLabel.text = formatter.string(from: mode.currentTime)
//            startButton.isEnabled = !mode.isRunning
//            stopButton.isEnabled = mode.isRunning
//            saveButton.isEnabled = mode.isPausing
//        }
//    }
//
//    // MARK: - IBOutlet
//    @IBOutlet private weak var assessmentItemLabel: UILabel! {
//        willSet (label) {
//            label.text = assessmentItem.name
//        }
//    }
//    @IBOutlet private weak var timerLabel: UILabel!
//    @IBOutlet private weak var saveButton: UIButton!
//    @IBOutlet private weak var startButton: UIButton!
//    @IBOutlet private weak var stopButton: UIButton!
//
//    required init?(coder: NSCoder, assessmentItem: AssessmentItem, repository: TimerAssessmentRepository) {
//        self.assessmentItem = assessmentItem
//        self.repository = repository
//        super.init(coder: coder)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    @IBAction private func save(_ sender: Any) {
//        let value = TimerAssessment(resultTimer: mode.currentTime)
//        repository.add(value: value, id: assessmentItem.id)
//        performSegue(withIdentifier: "save", sender: value.id)
//    }
//
//    @IBAction private func start(_ sender: Any) {
//        mode.start()
//    }
//
//    @IBAction private func stop(_ sender: Any) {
//        mode.pause()
//    }
//
//    @IBAction private func reset(_ sender: Any) {
//        mode.reset()
//    }
//}
//
//extension AssessmentViewController {
//    @IBSegueAction
//    func makeDetail(coder: NSCoder, sender: Any?, segueIdentifier: String?) -> DetailAssessmentViewController? {
//        guard let id = sender as? TimerAssessment.ID else {
//            return nil
//        }
//        return .init(coder: coder, repository: repository, id: id)
//    }
//}
