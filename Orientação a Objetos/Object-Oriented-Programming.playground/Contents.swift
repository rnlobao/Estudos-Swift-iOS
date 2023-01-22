class Music {
  let notes: [String]

  init(notes: [String]) {
    self.notes = notes
  }

  func prepared() -> String {
    return notes.joined(separator: " ")
  }
}

class Instrument {
    let brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func tune() -> String {
        fatalError("Implemente!")
    }
    
    func play(_ music: Music) -> String {
      return music.prepared()
    }
    
    func perform(_ music: Music) {
      print(tune())
      print(play(music))
    }
}


class Piano: Instrument {
  let hasPedals: Bool
  static let whiteKeys = 52
  static let blackKeys = 36
  
  init(brand: String, hasPedals: Bool = false) {
    self.hasPedals = hasPedals
    super.init(brand: brand)
  }
  
  override func tune() -> String {
    return "Piano standard tuning for \(brand)."
  }
  
  override func play(_ music: Music) -> String {
    let preparedNotes = super.play(music)
    return "Piano playing \(preparedNotes)"
  }
}

