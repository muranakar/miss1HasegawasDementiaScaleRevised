////
////  PastAssessmentViewController.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/02/01.
////
//
//import UIKit
//
//final class PastAssessmentViewController: UIViewController {
//    private var token: NotificationToken?
//    private let assessmentItem: AssessmentItem
//    private let repository: TimerAssessmentRepository
//    private let pasteboardFormatter = AssessmentResultPasteboardFormatter()
//    private var ascending = false {
//        didSet {
//            items = repository.load(id: assessmentItem.id, sortKey: "createdAt", ascending: ascending)
//                .compactMap(PastTimerAssessmentViewItem.init)
//        }
//    }
//    private var items = [PastTimerAssessmentViewItem]() {
//        didSet {
//            Task { [weak tableView] in
//                tableView?.reloadData()
//            }
//        }
//    }
//
//    @IBOutlet weak private var assessmentItemNameLabel: UILabel! {
//        willSet(label) {
//            label.text = assessmentItem.name
//        }
//    }
//    @IBOutlet weak private var tableView: UITableView! {
//        didSet {
//            tableView.registerNib(PastAssessmentTableViewCell.self)
//        }
//    }
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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem.title = assessmentItem.targetPerson.map { "対象者:　\($0.name)　様" }
//        startObserving()
//    }
//}
//
//private extension PastAssessmentViewController {
//    private func startObserving() {
//        token = repository.observe(id: assessmentItem.id, sortKey: "createdAt") { [weak self] in
//            self?.ascending
//        } callBack: { [weak self] result in
//            self?.items = (try result.get())
//                .compactMap(PastTimerAssessmentViewItem.init)
//        }
//    }
//}
//
//// MARK: - Action
//extension PastAssessmentViewController {
//    @IBAction private func sortTableView(_ sender: Any) {
//        ascending.toggle()
//    }
//
//    @objc func copyPasteboard(sender: PastAssessmentTableViewCellCopyButton) {
//        guard
//            let id = sender.id,
//            let timerAssessment = repository.load(id: id)
//        else {
//            return
//        }
//        UIPasteboard.general.string = pasteboardFormatter.string(from: timerAssessment)
//        present(UIAlertController.copyingCompletedPastAssessment(), animated: true)
//    }
//}
//
//// MARK: - UITableViewDataSource
//extension PastAssessmentViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        items.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: PastAssessmentTableViewCell = tableView.dequeueCell(for: indexPath)
//        cell.configure(item: items[indexPath.row])
//        return cell
//    }
//
//    func tableView(_: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        guard editingStyle == .delete else { return }
//        repository.remove(id: items[indexPath.row].id)
//    }
//}
