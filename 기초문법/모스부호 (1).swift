import Foundation

func solution(_ letter:String) -> String {
    
    let morse = [
        ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
        "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
        "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
        "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
        "-.--": "y", "--..": "z"
    ]
    
    // print(letter.components(separatedBy: " ").map({morse[$0] ?? ""}).joined())
    
    
    return letter.components(separatedBy: " ").map({morse[$0] ?? ""}).joined()
}