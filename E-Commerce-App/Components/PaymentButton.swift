import SwiftUI
import PassKit

struct PaymentButton: View {
    var action: () -> Void
    
    var body: some View {
        Representable(action: action)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
            .frame(minWidth: 100, maxHeight: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

extension PaymentButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> PKPaymentButton {
            let button = PKPaymentButton(paymentButtonType: .continue, paymentButtonStyle: .automatic)
            button.addTarget(context.coordinator, action: #selector(Coordinator.callback(_:)), for: .touchUpInside)
            return button
        }
        
        func updateUIView(_ uiView: PKPaymentButton, context: Context) {
            // No need to update anything in this case
        }
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .continue, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any) {
            action()
        }
    }
}

