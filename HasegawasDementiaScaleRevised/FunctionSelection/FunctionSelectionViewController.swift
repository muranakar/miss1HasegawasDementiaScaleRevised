//
//  FunctionSelectionViewController.swift
//  TimerAssessment
//
//  Created by 村中令 on 2022/02/01.
//

import UIKit

final class FunctionSelectionViewController: UIViewController {
    private let targetPerson: TargetPerson
    private let repository: TargetPersonRepository
    @IBOutlet weak private var assessmentItemLabel: UILabel! {
        willSet(label) {
            label.text = targetPerson.name
        }
    }

    required init?(coder: NSCoder, targetPerson: TargetPerson, repository: TargetPersonRepository) {
        self.targetPerson = targetPerson
        self.repository = repository
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "対象者:\(targetPerson.name)様"
    }
}

// MARK: - Segue
extension FunctionSelectionViewController {
//    @IBSegueAction
//    func makeAssessment(coder: NSCoder, sender: Any?, segueIdentifier: String?) -> AssessmentViewController? {
//        AssessmentViewController(
//            coder: coder,
//            targetPerson: TargetPerson,
//            repository: Repository.assessment()
//        )
//    }
//
//    @IBSegueAction
//    func makePastAssessment(coder: NSCoder, sender: Any?, segueIdentifier: String?) -> PastAssessmentViewController? {
//        PastAssessmentViewController(
//            coder: coder,
//            targetPerson: TargetPerson,
//            repository: Repository.assessment()
//        )
//    }

    @IBAction private func backToFunctionSelectionTableViewController(segue: UIStoryboardSegue) {
    }
}
