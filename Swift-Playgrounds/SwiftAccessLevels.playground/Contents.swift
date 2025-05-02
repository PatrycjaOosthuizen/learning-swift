import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
        print("\(aLocalVariable) printed from methodA in AClass") // Possible
        
        //Step 3. Try to print aPrivateProperty Here
        print(aPrivateProperty) // Possible
        
        //Step 6. Try to print aFilePrivateProperty Here
        print(aFilePrivateProperty)
               
        //Step 8. Try to print anInternalProperty Here
        print(anInternalProperty) //Possible 
           }
           
    func methodB () {
               
        //Step 2. Try to print aLocalVariable Here
        // print(aLocalVariable) // Not Possible out of scope
               
        //Step 4. Try to print aPrivateProperty Here
        print(aPrivateProperty) // Possible
        
           }
           
       }

class AnotherClassInTheSameFile {
           
    init() {
        
               
        //Step 5. Try to print aPrivateProperty Here
        // print(AClass().aPrivateProperty) // Not Possible - innaccessible due to 'private' protection level
               
        //Step 7. Try to print aFilePrivateProperty Here
        let a = AClass()
        print(a.aFilePrivateProperty) //Possible
               
           }
       }


let aClassInstance = AClass()
let anotherInstance = AnotherClassInTheSameFile()
aClassInstance.methodA()
aClassInstance.methodB()
