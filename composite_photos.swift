import Foundation
import AppKit

let ceremonyDir = "/Users/dilperez/Documents/personal/repos/invitacion/public/images/ceremony"
let basePath = "\(ceremonyDir)/drawing_base.jpg"
let dilanPath = "\(ceremonyDir)/dilan_child.jpg"
let mairaPath = "\(ceremonyDir)/maira_child.jpg"
let outputPath = "\(ceremonyDir)/drawing_composite.png"

guard let baseImg = NSImage(contentsOfFile: basePath),
      let dilanImg = NSImage(contentsOfFile: dilanPath),
      let mairaImg = NSImage(contentsOfFile: mairaPath) else {
    print("Failed to load images")
    exit(1)
}

let canvasWidth: CGFloat = 1152
let canvasHeight: CGFloat = 1024

let colorSpace = CGColorSpaceCreateDeviceRGB()
guard let context = CGContext(
    data: nil,
    width: Int(canvasWidth),
    height: Int(canvasHeight),
    bitsPerComponent: 8,
    bytesPerRow: 0,
    space: colorSpace,
    bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
) else {
    print("Failed to create context")
    exit(1)
}

NSGraphicsContext.saveGraphicsState()
let nsContext = NSGraphicsContext(cgContext: context, flipped: false)
NSGraphicsContext.current = nsContext

// Fill white background
NSColor.white.setFill()
NSRect(x: 0, y: 0, width: canvasWidth, height: canvasHeight).fill()

// Left photo (Dilan)
let dilanRect = NSRect(x: 80, y: 180, width: 460, height: 640)
// Right photo (Mayra)
let mairaRect = NSRect(x: 612, y: 180, width: 460, height: 640)

// Draw Dilan photo with rounded arch top
let dilanPathClip = NSBezierPath(roundedRect: dilanRect, xRadius: 40, yRadius: 40)
nsContext.cgContext.saveGState()
dilanPathClip.addClip()
dilanImg.draw(in: dilanRect, from: NSRect.zero, operation: .sourceOver, fraction: 1.0)
nsContext.cgContext.restoreGState()

// Draw Mayra photo with rounded arch top
let mairaPathClip = NSBezierPath(roundedRect: mairaRect, xRadius: 40, yRadius: 40)
nsContext.cgContext.saveGState()
mairaPathClip.addClip()
mairaImg.draw(in: mairaRect, from: NSRect.zero, operation: .sourceOver, fraction: 1.0)
nsContext.cgContext.restoreGState()

// Draw base illustration over both photos using multiply blend mode
baseImg.draw(in: NSRect(x: 0, y: 0, width: canvasWidth, height: canvasHeight), from: NSRect.zero, operation: .multiply, fraction: 1.0)

NSGraphicsContext.restoreGraphicsState()

if let cgImage = context.makeImage() {
    let rep = NSBitmapImageRep(cgImage: cgImage)
    if let data = rep.representation(using: .png, properties: [:]) {
        try? data.write(to: URL(fileURLWithPath: outputPath))
        print("Successfully generated composite image v2 at:", outputPath)
    }
}
