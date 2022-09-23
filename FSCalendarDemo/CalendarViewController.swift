//
//  ViewController.swift
//  FSCalendarDemo
//
//  Created by BrainX IOS on 25/08/2022.
//

import FSCalendar
import UIKit

class CalendarViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet var calendarView: CalendarView!
    
    // MARK: - Instance Properties
    
    private var formater = DateFormatter()
    private var dummyDatesArray = ["01-08-2022", "24-08-2022", "10-08-2022", "17-08-2022", "24-08-2022", "25-08-2022"]
    private var currentPage: Date?
    private lazy var today: Date = { return Date() }()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Internal Methods
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        formater.dateFormat = "dd-MM-yyyy"
        let dateString = self.formater.string(from: date)
        if self.dummyDatesArray.contains(dateString) {
            return 1
        }
        return 0
    }
    
    // MARK: - Action Methods
    
    @IBAction
    func backButtonPressed(_ sender: UIButton) {
        moveCurrentPage(moveUp: false)
    }
    
    
    @IBAction
    func forwardButtonPressed(_ sender: Any) {
        moveCurrentPage(moveUp: true)
    }
    
    @IBAction
    func crossButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    
    private func moveCurrentPage(moveUp: Bool) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.month = moveUp ? 1 : -1
        currentPage = calendar.date(byAdding: dateComponents, to: currentPage ?? today)
        calendarView.calendar.setCurrentPage(currentPage!, animated: true)
    }
}
