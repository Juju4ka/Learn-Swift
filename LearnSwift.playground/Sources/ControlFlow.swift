import Foundation

// Control Flow
// Experimenting with conditionals and loops
// by solving Two Sum problem with Brute Force

public class ControlFlow {

    public class func samples() {
        
        print("---- Control Flow ----")

        /*
         Two Sum Problem
         Given nums = [2, 7, 11, 15], target = 9,
         Because nums[0] + nums[1] = 2 + 7 = 9,
         return [0, 1].
         */

        let nums = [3, 2, 4]
        let count = nums.count - 1
        let target = 6
        var result = [Int]()

        if(count > 0) {
            for i in 0...count {
                
                print ("i: \(i)")
                let val = nums[i]
                let next = i + 1
                
                if (next < nums.count) {
                    for j in next...count {
                        print (j)
                        let val2 = nums[j]

                        if (target - val2 == val) {
                            result.append(i)
                            result.append(j)
                            break
                        }
                    }
                }
                
                print("----")
                
                if(result.count > 0) {
                    break
                }
            }
        }

        print(result)
        print("\n")
    }
}
