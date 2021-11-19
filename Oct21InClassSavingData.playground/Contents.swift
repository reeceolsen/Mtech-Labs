import UIKit

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
    
}

let note1 = Note(title: "Note One",
   text: "This is a sample note.", timestamp: Date())
let note2 = Note(title: "Note Two", text: "This is another sample note.", timestamp: Date())
let note3 = Note(title: "Note Three", text: "This is yet another sample note.", timestamp: Date())
let notes = [note1, note2, note3]


let propertyListEncoder = PropertyListEncoder()
//if let encodedNote = try?
//    propertyListEncoder.encode(newNote) {
//        print(encodedNote)
//    let propertyListDecoder = PropertyListDecoder()
//    if let decodedNote = try?
//        propertyListDecoder.decode(Note.self, from: encodedNote) {
//        print(decodedNote)
//    }
//    }



let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archivedURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")
print(archivedURL)
let propertyListDecoder = PropertyListDecoder()

if let retrievedNotesData = try? Data(contentsOf: archivedURL), let decodedNote = try? propertyListDecoder.decode(Array<Note>.self, from: retrievedNotesData) {
    
    print(decodedNote)
}

