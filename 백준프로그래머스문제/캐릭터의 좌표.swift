import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x = 0
    var y = 0

    var minX = -board[0]/2
    var maxX = board[0]/2

    var minY = -board[1]/2
    var maxY = board[1]/2

    for key in keyinput {
        switch key {
        case "up":
            y = y+1 > maxY ? maxY : y+1
        case "down":
            y = y-1 < minY ? minY : y-1
        case "left":
            x = x-1 < minX ? minX : x-1
        case "right":
            x = x+1 > maxX ? maxX : x+1
        default:
            continue
        }
    }
    return [x, y]
}