//
//  CalendarView.swift
//  FSCalendarDemo
//
//  Created by BrainX IOS on 25/08/2022.
//

import FSCalendar
import UIKit

class CalendarView: UIView {
    
    // MARK: - Outlets

    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var underView: UIView!
    
    // MARK: - Lifecycle Methods

    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 20
        underView.layer.cornerRadius = 3
        calendar.appearance.weekdayTextColor = .lightGray
        calendar.placeholderType = .none
        calendar.appearance.caseOptions = [.weekdayUsesUpperCase, .headerUsesUpperCase]
        calendar.scrollEnabled =  false
    }
}
