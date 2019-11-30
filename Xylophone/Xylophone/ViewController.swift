import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        let soundName = sender.currentTitle
        
        sender.alpha = sender.alpha / 2
        playSound(soundName: soundName!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Put your code which should be executed with a delay here
            
            sender.alpha = sender.alpha * 2
        }
        
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
