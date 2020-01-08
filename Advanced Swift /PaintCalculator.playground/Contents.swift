import Foundation

var width: Float = 1.5
var height: Float = 2.3

let areaCoveredPerBucket: Float = 1.5

var area: Float {
    return width * height
}

var bucketsOfPaint: Int {
    get {
        return Int(ceilf(area / areaCoveredPerBucket))
    }
    set {
        let areaCanCover = Double(newValue) * Double(areaCoveredPerBucket)
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
    
}

bucketsOfPaint = 10

print(bucketsOfPaint)


