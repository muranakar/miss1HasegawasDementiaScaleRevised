////
////  PastTimerAssessmentViewItem.swift
////  TimerAssessment
////
////  Created by Takehito Koshimizu on 2022/02/20.
////
//
//import Foundation
//
//struct PastTimerAssessmentViewItem {
//    let id: TimerAssessment.ID
//    let timerResult: String
//    let creationDate: String
//}
//
//extension PastTimerAssessmentViewItem {
//    private static let timerFormatter = ResultTimerFormatter()
//    private static let dateFormatter = DateFormatter.evaluated()
//
//    init(_ value: TimerAssessment) {
//        self.init(
//            id: value.id,
//            timerResult: Self.timerFormatter.string(from: value.resultTimer),
//            creationDate: Self.dateFormatter.string(from: value.createdAt)
//        )
//    }
//}
