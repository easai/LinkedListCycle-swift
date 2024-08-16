//
//  main.swift
//  LinkedListCycle
//
//  Created by E A on 8/14/24.
//

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next

            if slow === fast {
                return true
            }
        }

        return false
    }

    func test() {
        let lst = [3, 2, 0, -4]
        var head = createList(lst, 1)
        head?.dump()
        print(hasCycle(head))
    }
}

let solution = Solution()
solution.test()
