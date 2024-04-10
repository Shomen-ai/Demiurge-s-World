import SwiftUI

// MARK: - Creation Cell

/// Represents a view for displaying individual cells in the application.
/// Each cell can be either a life cell, a living cell, or a dead cell.

struct CreationCell: View {
    
    var born: Cell
    var title: String = ""
    var subtitle: String = ""
    var image: String = ""
    var gradient: LinearGradient
    
    init(born: Cell, index: Int) {
        self.born = born
        switch born {
        case .life:
            self.title = "Жизнь"
            self.subtitle = "Ку-ку!"
            self.image = "🐣"
            self.gradient = ColorPalette.lifeColorGradient
        case .living:
            self.title = "Живая"
            self.subtitle = "И шевелится!"
            self.image = "💥"
            self.gradient = ColorPalette.livingColorGradient
        case .dead:
            self.title = "Мёртвая"
            self.subtitle = "Или прикидывается"
            self.image = "💀"
            self.gradient = ColorPalette.deadColorGradient
        }
    }
    
    let padding: CGFloat = 10
    
    var body: some View {
        HStack() {
            ZStack() {
                Circle()
                    .fill(gradient)
                    .frame(width: 40, height: 40)
                Text(image)
                    .font(.system(size: 20))
            }
            .padding(.leading, 10)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(ColorPalette.textColorBlack)
                    .id(UUID())
                Text(subtitle)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(ColorPalette.textColorBlack)
                    .id(UUID())
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 72)
        .background(Color.white)
        .cornerRadius(8)
    }
}
