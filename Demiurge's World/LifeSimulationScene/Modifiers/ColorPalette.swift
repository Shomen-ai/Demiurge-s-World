import SwiftUI

// MARK: - Color Palette

/// Defines a set of predefined colors and gradients used in the application's UI.
/// These colors and gradients are utilized for various UI elements such as backgrounds, text, and status bar.

final class ColorPalette {
    static let mainColor = Color(uiColor: UIColor(red: 90/255, green: 52/255, blue: 114/255, alpha: 1.0))
    static let statusBarColor = Color(uiColor: UIColor(red: 90/255, green: 53/255, blue: 114, alpha: 1.0))
    static let textColorBlack =  Color(uiColor: UIColor(red: 0.0, green: 0.0 , blue: 0.0 , alpha: 1.0))
    static let textColorWhite =  Color(uiColor: UIColor(red: 1.0, green: 1.0 , blue: 1.0 , alpha: 1.0))
    static let livingColorGradient = LinearGradient(gradient: Gradient(colors:
                                                                        [Color(uiColor: UIColor(red: 255/255, green: 184/255, blue: 0/255, alpha: 1.0)),
                                                                         Color(uiColor: UIColor(red: 255/255, green: 247/255, blue: 176/255, alpha: 1.0))]),
                                                    startPoint: .top, endPoint: .bottom)
    static let lifeColorGradient = LinearGradient(gradient: Gradient(colors:
                                                                        [Color(uiColor: UIColor(red: 173/255, green: 0/255, blue: 255/255, alpha: 1.0)),
                                                                         Color(uiColor: UIColor(red: 255/255, green: 176/255, blue: 233/255, alpha: 1.0))]),
                                                  startPoint: .top, endPoint: .bottom)
    static let deadColorGradient = LinearGradient(gradient: Gradient(colors:
                                                                        [Color(uiColor: UIColor(red: 13/255, green: 101/255, blue: 138/255, alpha: 1.0)),
                                                                         Color(uiColor: UIColor(red: 176/255, green: 255/255, blue: 180/255, alpha: 1.0))]),
                                                  startPoint: .top, endPoint: .bottom)
    static let backgroundColor = LinearGradient(gradient: Gradient(colors:
                                                                    [Color(uiColor: UIColor(red: 49/255, green: 0/255, blue: 80/255, alpha: 1.0)),
                                                                     Color(uiColor: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0))]),
                                                startPoint: .top, endPoint: .bottom)
}
