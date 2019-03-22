import Foundation

/*
convenience method
count how many times
a particular IntSet is found in an array
*/

// count the number of elements of any Equatable Type
extension Array {

    func elementCountGeneric<T: Equatable> (input: T) -> Int {
        var count = 0
        for Element in self {
            if Element as! T == input {
                count += 1
            }
        }
        return count
    }
 
    /*
    // if this were generic, could not pass in [IntArray]
    func elementCount (input: IntArray) -> Int {
        var count = 0
        for el in self {
            if (input == el as! IntArray) {
                count += 1
            }
        }
        return count
    }
    */
    
    func containsElement <T:Equatable> (input: T) -> Bool {
        for Element in self {
            if Element as! T == input {
                return true
            }
        }
        return false
    }
    
    func uniqueValues () ->  [IntArray] {
        // quick and dirty, couldn't figure out the right way
        // compute a string for an IntArray and check for that
        var hashes = [String]()
        var ret = [IntArray]()
        
        for Element in self {
            var v = Element as! IntArray
            v = v.sorted()
            let s = String(describing:  v)
            if !(hashes.contains(s)) {
                ret.append(v)
                hashes.append(s)
            }
        }
        return ret
    }
}

extension String {
    func divideStringIntoChunks(chunkSize n: Int) -> [String] {
        var ret = [String]()
        var current = self
        while true {
            let m = current.count
            if m == 0 {
                break
            }
            if m < n {
                ret.append(current)
                break
            }
            let i = current.startIndex
            let j = current.index(i, offsetBy: n-1)
            let k = current.index(i, offsetBy: n)
            let front = String(current[i...j])
            ret.append(front)
            current = String(current[k...])
        }
        return ret
    }
    
    
    func insertSeparator(sep: String, every n: Int) -> String {
        let ret = self.divideStringIntoChunks(chunkSize: n)
        return ret.joined(separator: sep)
    }
    
    func stripOccurrencesOfCharactersInList(cL: String) -> String {
        var a = [Character]()
        for c in self {
            if cL.contains(c) {
                continue
            }
            a.append(c)
        }
        return a.map{String($0)}.joined(separator: "")
    }

}
