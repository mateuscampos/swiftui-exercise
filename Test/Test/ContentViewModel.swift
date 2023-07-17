//
//  ContentViewModel.swift
//  Test
//
//  Created by Mateus de Campos on 28/06/23.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published var counter: Int = 0 {
        didSet {
            checkForWarning()
        }
    }
    @Published var shouldShowWarning: Bool = false
    let maxPeopleAllowed = 5

    func plusTouched() {
        counter += 1
    }

    func minusTouched() {
        if counter > 0 {
            counter -= 1
        }
    }

    func resetTouched() {
        counter = 0
    }

    private func checkForWarning() {
        withAnimation {
            shouldShowWarning = counter >= maxPeopleAllowed
        }
    }

}
