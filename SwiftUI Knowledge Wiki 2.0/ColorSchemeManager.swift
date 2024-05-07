import SwiftUI
import Foundation

class ColorSchemeManager: ObservableObject {
    static let shared = ColorSchemeManager()

    @Published var selectedColorScheme: String = "system" // Default value

    func getPreferredColorScheme() -> ColorScheme {
        switch selectedColorScheme {
        case "light":
            return .light
        case "dark":
            return .dark
        default:
            return .dark
        }
    }
}

