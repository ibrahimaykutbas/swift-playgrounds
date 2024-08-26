import SwiftUI

struct EventRow: View {
    @ScaledMetric var imageWidth: CGFloat = 40
    
    let event: Event
    
    var body: some View {
        HStack {
            Label {
                VStack(alignment: .leading, spacing: 5) {
                    Text(event.title)
                        .fontWeight(.bold)
                    
                    Text(event.date.formatted(date: .abbreviated, time: .shortened))
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
            } icon: {
                Image(systemName: event.symbol)
                    .foregroundColor(Color(event.color))
                    .padding(.trailing, 15)
            }
            .labelStyle(CustomLabelStyle())
            
            if event.isComplete {
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundColor(.secondary)
            }
        }
        .badge(event.remainingTaskCount)
    }
}

#Preview {
    EventRow(event: Event.example)
}
