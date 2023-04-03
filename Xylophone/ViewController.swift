
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBAction func keyPressedC(_ sender: UIButton) {
        
        playSound(buttonName: sender.currentTitle!)
        sender.alpha = 0.8
        
        //Code should execute after 0.05 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(buttonName:String) {
        let url = Bundle.main.url(forResource: buttonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}



