////
////  PastAssessmentTableViewCell.swift
////  TimerAssessment
////
////  Created by 村中令 on 2022/02/06.
////
//
//import UIKit
//
//final class PastAssessmentTableViewCell: UITableViewCell {
//    @IBOutlet weak private var timerResultNumLabel: UILabel!
//    @IBOutlet weak private var createdAtLabel: UILabel!
//    @IBOutlet weak private var copyTextButton: PastAssessmentTableViewCellCopyButton!
//
//    func configure(item: PastTimerAssessmentViewItem) {
//        copyTextButton.id = item.id
//        timerResultNumLabel.text = item.timerResult
//        createdAtLabel.text = item.creationDate
//    }
//
//    func configure(id: TimerAssessment.ID?, timerResult: String, creationDate: String) {
//        copyTextButton.id = id
//        timerResultNumLabel.text = timerResult
//        createdAtLabel.text = creationDate
//    }
//}
//
//final class PastAssessmentTableViewCellCopyButton: UIButton {
//    fileprivate(set) var id: TimerAssessment.ID?
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        tintColor = Colors.mainColor
//        addTarget(nil, action: #selector(PastAssessmentViewController.copyPasteboard), for: .touchUpInside)
//    }
//}
