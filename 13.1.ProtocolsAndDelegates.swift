// Whoever sets themselves as the delegate must adopt the AdvanceLifeSupport protocol.
protocol AdvanceLifeSupport {
    func performCPR()  // Any class or struct that conforms to this protocol must implement this function.
}

class EmergencyCallHandler {
    // The delegate is an optional property that can be any object conforming to AdvanceLifeSupport.
    // It's optional (`?`) because we may not always have a delegate assigned.
    var delegate: AdvanceLifeSupport?
    
    // Function that simulates the emergency operator assessing the situation.
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    // Function that calls performCPR() on the assigned delegate (if there is one).
    func medicalEmergency() {
        delegate?.performCPR()  // The delegate responds to the emergency.
    }
}

// A paramedic follows AdvanceLifeSupport and can be a delegate.
struct Paramedic: AdvanceLifeSupport {
    // When a Paramedic is created, it sets itself as the delegate of EmergencyCallHandler.
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    // Implements the required performCPR() method from the protocol.
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

// A doctor also conforms to AdvanceLifeSupport.
class Doctor: AdvanceLifeSupport {
    // When a Doctor is created, it assigns itself as the delegate.
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    // Implements performCPR() as required by the protocol.
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    // Additional functionality specific to doctors.
    func useStethoscope() {
        print("Listening for heart sounds.")
    }
}

// A surgeon is a specialized doctor, so it inherits from Doctor.
class Surgeon: Doctor {
    // The Surgeon overrides performCPR() to add more functionality.
    override func performCPR() {
        super.performCPR()  // Calls the Doctor’s CPR method first.
        print("Sings 'Staying Alive' by the Bee Gees.")  // Fun CPR training reference.
    }

    // Additional functionality for surgeons.
    func useElectricDrill() {
        print("Whirr...")
    }
}

// Creating an emergency call handler instance.
let emilio = EmergencyCallHandler()

// Creating a surgeon instance and assigning them as the delegate of the call handler.
let angela = Surgeon(handler: emilio)

// The call handler asks about the emergency situation.
emilio.assessSituation()

// A medical emergency occurs, so the delegate (Angela, the Surgeon) performs CPR.
emilio.medicalEmergency()


/* How This Works (Step by Step)
1. The AdvanceLifeSupport protocol defines a rule: anyone who wants to be a delegate must implement performCPR().
2. The EmergencyCallHandler has a delegate that it calls when a medical emergency happens.
3. A Paramedic, Doctor, and Surgeon can all act as delegates because they conform to AdvanceLifeSupport by implementing performCPR().
4. When we create Surgeon(handler: emilio), it sets itself as the delegate for EmergencyCallHandler.
5. Now, when emilio.medicalEmergency() is called, it tells Angela (the Surgeon) to perform CPR.
6. The Surgeon performs CPR and also sings "Staying Alive" because of the override.

 Key Points:
✅ Loose coupling: EmergencyCallHandler doesn’t care who the delegate is—it just calls performCPR().
✅ Flexibility: We can change the delegate at runtime. If we assigned a Paramedic instead, they would handle CPR differently.
✅ Code reusability: Doctors, surgeons, and paramedics all follow the same protocol but can extend their functionality.
*/