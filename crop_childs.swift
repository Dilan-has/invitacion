import Foundation
import AppKit

let ceremonyDir = "/Users/dilperez/Documents/personal/repos/invitacion/public/images/ceremony"
let childsPath = "\(ceremonyDir)/childs.png"

guard let img = NSImage(contentsOfFile: childsPath),
      let cgImg = img.cgImage(forProposedRect: nil, context: nil, hints: nil) else {
    print("Failed to load image")
    exit(1)
}

// Bounding box: X: 681..1247 (width 566), Y: 249..726 (height 477)
// Add 30px margin: X: 651..1277 (width 626), Y: 219..756 (height 537)
let cropX: CGFloat = 650
let cropY: CGFloat = 1080 - 756 // CGContext Y coordinates are inverted (from bottom)
let cropWidth: CGFloat = 628
let cropHeight: CGFloat = 537

let cropRect = CGRect(x: cropX, y: cropY, width: cropWidth, height: cropHeight)

guard let croppedCg = cgImg.cropping(to: cropRect) else {
    print("Cropping failed")
    exit(1)
}

let rep = NSBitmapImageRep(cgImage: croppedCg)
guard let data = rep.representation(using: .png, properties: [:]) else {
    print("PNG representation failed")
    exit(1)
}

try? data.write(to: URL(fileURLWithPath: childsPath))
print("Successfully cropped childs.png tightly to artwork bounds! New size:", croppedCg.width, "x", croppedCg.height)
