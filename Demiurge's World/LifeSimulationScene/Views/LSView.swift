import SwiftUI

// MARK: - LifeSimulation(LS) View

/// Main view responsible for displaying the content of the application.
/// It utilizes the ViewModel to manage the state and logic of the content.

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("Клеточное наполнение")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(ColorPalette.textColorWhite)
                .padding()
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 5) {
                    ForEach(viewModel.life.indices, id: \.self) { index in
                        CreationCell(born: viewModel.life[index], index: index)
                    }
                }
            }
            Spacer()
            Button(action: {
                viewModel.generateNewCell()
            }) {
                Text("СОТВОРИТЬ")
                    .frame(maxWidth: .infinity, minHeight: 36)
                    .background(ColorPalette.mainColor)
                    .foregroundColor(ColorPalette.textColorWhite)
                    .cornerRadius(4)
                    .font(.system(size: 14, weight: .medium))
            }
        }
        .padding()
        .background(ColorPalette.backgroundColor)
        .modifier(NavigationBarModifier(backgroundColor: ColorPalette.mainColor, textColor: .white))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



