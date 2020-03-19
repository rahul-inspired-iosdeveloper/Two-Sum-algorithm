import Foundation

func twoSum(array:[Int],target:Int)->(Int,Int)?{
    
    var dict = [Int:Int]()
    
    //For every number
    for (arrayItemIndex,n) in array.enumerated() {
        
        //Find the complement number to n, that would sum up to the target.
        let complement = target - n
        
        //Checking for complement number in the dictionary
        if let complementIndex = dict[complement] {
            return (complementIndex,arrayItemIndex)
        }
        
        //Store n with index
        dict[n] = arrayItemIndex
    }
    
    return nil
}

let result = twoSum(array: [1,5,6,7,8], target: 11)
print(result)
