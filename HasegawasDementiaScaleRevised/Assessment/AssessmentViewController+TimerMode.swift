////
////  AssessmentViewController+TimerMode.swift
////  TimerAssessment
////
////  Created by Takehito Koshimizu on 2022/02/19.
////
//
//import Foundation
//import QuartzCore
//
//// MARK: - TimerMode
//extension AssessmentViewController {
//    enum TimerMode {
//        case notRunning
//        case running(satartTime: Double, current: Double)
//        case pausing(satartTime: Double, current: Double)
//    }
//}
//
//// MARK: -
//extension AssessmentViewController.TimerMode {
//    mutating func start() {
//        self = .running(satartTime: CACurrentMediaTime() - currentTime, current: currentTime)
//    }
//
//    mutating func continueRunning(timestamp: Double) {
//        guard isRunning else {
//            return
//        }
//        self = .running(satartTime: startTimeStamp, current: timestamp - startTimeStamp)
//    }
//
//    mutating func pause() {
//        self = .pausing(satartTime: startTimeStamp, current: currentTime)
//    }
//
//    mutating func reset() {
//        self = .notRunning
//    }
//}
//
//// MARK: - 
//extension AssessmentViewController.TimerMode {
//    var startTimeStamp: Double {
//        switch self {
//        case .running(let startTimeStamp, _), .pausing(let startTimeStamp, _):
//            return startTimeStamp
//        case .notRunning:
//            return CACurrentMediaTime()
//        }
//    }
//
//    var currentTime: Double {
//        switch self {
//        case .running(_, let current), .pausing(_, let current):
//            return current
//        case .notRunning:
//            return 0
//        }
//    }
//
//    var isRunning: Bool {
//        switch self {
//        case .running:
//            return true
//        case .notRunning, .pausing:
//            return false
//        }
//    }
//
//    var isPausing: Bool {
//        switch self {
//        case .pausing:
//            return true
//        case .notRunning, .running:
//            return false
//        }
//    }
//}
