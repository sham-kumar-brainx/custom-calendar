//
//  MainViewController.swift
//  FSCalendarDemo
//
//  Created by BrainX IOS on 25/08/2022.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Action Methods
    
    @IBAction
    func calendarButtonPressed(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CalendarViewController")
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
}
