////
////  AssessmentItemViewController.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/01/31.
////
//
//import UIKit
//
//final class AssessmentItemViewController: UIViewController {
//    private var token: NotificationToken?
//    private let targetPerson: TargetPerson
//    private let repository: AssessmentItemRepository
//    private var assessmentItems = [AssessmentItem]() {
//        didSet {
//            Task { [weak tableView] in
//                tableView?.reloadData()
//            }
//        }
//    }
//    @IBOutlet @BottomFloatingItems private var floatingItems: [UIView]
//    @IBOutlet weak private var tableView: UITableView!
//
//    required init?(coder: NSCoder, targetPerson: TargetPerson, repository: AssessmentItemRepository) {
//        self.targetPerson = targetPerson
//        self.repository = repository
//        super.init(coder: coder)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem.title = "\(targetPerson.name)　様の評価項目リスト"
//        startObserving()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tableView.selectRow(at: nil, animated: animated, scrollPosition: .none)
//    }
//}
//
//private extension AssessmentItemViewController {
//    private func startObserving() {
//        token = repository.observe(id: targetPerson.id) { [weak self] result in
//            self?.assessmentItems = try result.get()
//        }
//    }
//}
//
//// MARK: - UITableViewDataSource
//extension AssessmentItemViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        assessmentItems.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: AssessmentItemTableViewCell = tableView.dequeueCell(for: indexPath)
//        cell.configue(name: assessmentItems[indexPath.row].name)
//        return cell
//    }
//
//    func tableView(_: UITableView, commit style: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        guard style == .delete else { return }
//        repository.remove(id: assessmentItems[indexPath.row].id)
//    }
//}
//
//// MARK: - UITableViewDelegate
//extension AssessmentItemViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        performSegue(withIdentifier: "edit", sender: indexPath)
//    }
//}
//
//// MARK: - UIScrollViewDelegate
//extension AssessmentItemViewController: UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        $floatingItems.updateVisibility(scrollView)
//    }
//}
//
//// MARK: - Segue
//extension AssessmentItemViewController {
//    @IBSegueAction
//    func makeInputAssessmentItem(
//        coder: NSCoder,
//        sender: Any?,
//        segueIdentifier: String?
//    ) -> InputAssessmentItemViewController? {
//        switch (segueIdentifier, sender) {
//        case ("input", _):
//            return .init(coder: coder, repository: repository, mode: .input(targetPerson.id))
//        case ("edit", let indexPath) as (String, IndexPath):
//            return .init(coder: coder, repository: repository, mode: .edit(assessmentItems[indexPath.row]))
//        case _:
//            return nil
//        }
//    }
//
//    @IBSegueAction
//    func makeFunctionSelection(
//        coder: NSCoder,
//        sender: Any?,
//        segueIdentifier: String?
//    ) -> FunctionSelectionViewController? {
//        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
//            return nil
//        }
//        return .init(
//            coder: coder,
//            assessmentItem: assessmentItems[indexPath.row],
//            repository: repository
//        )
//    }
//
//    @IBAction private func backToAssessmentItemTableViewController(segue: UIStoryboardSegue) {
//    }
//}
