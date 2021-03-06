import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    var mainWindowController: MainWindowController?
    var textWindowController: TextWindowController?
    

func applicationDidFinishLaunching(_ aNotification: Notification) {

    // Create a window controller with a XIB file of the same name  
    let mainWindowController = MainWindowController(windowNibName: NSNib.Name(rawValue: "MainWindowController"))
    
    // Put the window of the window controller on screen
    mainWindowController.showWindow( self)
    
    // Hillegass book says:  do setup first, then assignment:
    // Set the property to point to the window controller
    self.mainWindowController = mainWindowController
    
    let textWindowController = TextWindowController()
    self.textWindowController = textWindowController
    
    window.performClose(self)
        
    }


}

