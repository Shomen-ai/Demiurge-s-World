import SwiftUI

// MARK: - LifeSimulation(LS) ViewModel

/// View model responsible for managing the state and logic of the content view.
/// It handles the generation of new cells and tracks consecutive occurrences of living and dead cells.

class ContentViewModel: ObservableObject {
    @Published var life: [Cell] = []
    @Published var consecutiveLiving = 0
    @Published var consecutiveDead = 0
    
    func generateNewCell() {
        let randomNumber = Int.random(in: 1...2)
        guard let newCell = Cell(rawValue: randomNumber) else { return }
        life.insert(newCell, at: 0)
        
        if newCell == .living {
            consecutiveLiving += 1
            consecutiveDead = 0
        }
        if newCell == .dead {
            consecutiveDead += 1
            consecutiveLiving = 0
        }
        
        if consecutiveLiving == 3 {
            life.insert(.life, at: 0)
            consecutiveLiving = 0
        }
        if consecutiveDead == 3 {
            if life.count >= 4 {
                if life[3] == .life {
                    life.remove(at: 3)
                }
            }
            consecutiveDead = 0
        }
    }
}
