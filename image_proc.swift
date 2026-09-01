import Foundation
import AppKit

let brainDir = "/Users/dilperez/.gemini/antigravity-ide/brain/68fcc251-839d-43cd-9260-e1cb4d1c65c3"
let colorsDir = "/Users/dilperez/Documents/personal/repos/invitacion/media/colors"

// Extract color hexes from media/colors
let fileManager = FileManager.default
if let colorFiles = try? fileManager.contentsOfDirectory(atPath: colorsDir).filter({ $0.hasSuffix(".jpeg") || $0.hasSuffix(".jpg") }) {
    for file in colorFiles {
        let path = "\(colorsDir)/\(file)"
        if let image = NSImage(contentsOfFile: path),
           let cgImage = image.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            let width = cgImage.width
            let height = cgImage.height
            if let dataProvider = cgImage.dataProvider,
               let data = dataProvider.data,
               let ptr = CFDataGetBytePtr(data) {
                let bytesPerPixel = cgImage.bitsPerPixel / 8
                let bytesPerRow = cgImage.bytesPerRow
                var rSum = 0, gSum = 0, bSum = 0, count = 0
                for y in stride(from: 0, to: height, by: 4) {
                    for x in stride(from: 0, to: width, by: 4) {
                        let offset = y * bytesPerRow + x * bytesPerPixel
                        let r = Int(ptr[offset])
                        let g = Int(ptr[offset+1])
                        let b = Int(ptr[offset+2])
                        rSum += r; gSum += g; bSum += b
                        count += 1
                    }
                }
                if count > 0 {
                    let r = rSum / count
                    let g = gSum / count
                    let b = bSum / count
                    let hex = String(format: "#%02X%02X%02X", r, g, b)
                    print("Color file: \(file) -> Hex: \(hex) RGB: (\(r), \(g), \(b))")
                }
            }
        }
    }
}
