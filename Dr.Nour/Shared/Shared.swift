class Shared {
    static var BiometricAuthEnabled:Bool = false{
        didSet{
            if self.BiometricAuthEnabled == true {
                print("Biometric enabled")
            } else if self.BiometricAuthEnabled == false {
                print("Biometric disabled")
            }
        }
    }
    
    
}
