import Get
import SwiftUI

public struct ContentView: View {
    public init() {
        // Get Client
        let client = APIClient(baseURL: URL(string: "https://example.com"))
    }

    public var body: some View {
        Text("Hello, World!")
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
