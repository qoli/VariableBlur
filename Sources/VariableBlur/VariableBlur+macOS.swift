#if os(macOS)
import SwiftUI

public enum VariableBlurDirection {
    case blurredTopClearBottom
    case blurredBottomClearTop
}

public struct VariableBlurView: View {
    public var maxBlurRadius: CGFloat = 20
    public var direction: VariableBlurDirection = .blurredTopClearBottom
    public var startOffset: CGFloat = 0

    public init(maxBlurRadius: CGFloat = 20, direction: VariableBlurDirection = .blurredTopClearBottom, startOffset: CGFloat = 0) {
        self.maxBlurRadius = maxBlurRadius
        self.direction = direction
        self.startOffset = startOffset
    }

    public var body: some View {
        Rectangle().fill(.clear)
    }
}

public struct BackgroundBlur: View {
    public var radius: CGFloat

    public init(radius: CGFloat) {
        self.radius = radius
    }

    public var body: some View {
        Rectangle().fill(.clear)
    }
}
#endif
