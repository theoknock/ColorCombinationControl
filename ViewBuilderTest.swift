import SwiftUI

struct ViewBuilderTest: View {
    var body: some View {
        ZStack {
            CircleMarkerGroup()
        }
    }

    // Function returning a composite view using @ViewBuilder
    @ViewBuilder
    private func CircleMarkerGroup() -> some View {
        ZStack {
            CircleMarker(color: .red)
            CircleMarker(color: .blue)
                .offset(x: 40, y: 0)
            CircleMarker(color: .green)
                .offset(x: -40, y: 0)
        }
    }

    // Individual CircleMarker without @ViewBuilder
    struct CircleMarker: View {
        let color: Color

        var body: some View {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(color)
        }
    }
}
