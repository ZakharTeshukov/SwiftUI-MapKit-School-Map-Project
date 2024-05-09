import SwiftUI

struct SettingsView: View {
    @ObservedObject var colorSchemeManager = ColorSchemeManager.shared

    var body: some View {
        
        NavigationView {
            
            List {
                Section(header: Text("Appearance")) {
                    Picker(selection: $colorSchemeManager.selectedColorScheme, label: Text("Color Scheme")) {
                        Text("System").tag("system")
                        Text("Light").tag("light")
                        Text("Dark").tag("dark")
                    }
                    .pickerStyle(.segmented)
                }
                //Add code here
            }
            .navigationTitle("Settings:")
            .preferredColorScheme(colorSchemeManager.getPreferredColorScheme())
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}



