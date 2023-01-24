import VercelUI

struct MainLayout<Content: View>: View {

    var title: String

    var subtitle: String

    @ViewBuilder
    var content: () -> Content

    var body: some View {
        ScrollView {
            HTMLTitle("\(title) | Server Side Swift")
            VStack(alignment: .leading) {
                Text(title)
                    .font(.largeTitle)

                Text(subtitle)
                    .font(.subheadline)
                    .padding(.bottom, 20)

                content()
            }
            .frame(idealWidth: 800, maxWidth: 800, alignment: .topLeading)
            .padding()
        }
    }
}
