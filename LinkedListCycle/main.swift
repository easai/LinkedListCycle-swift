//
//  main.swift
//  LinkedListCycle
//
//  Created by E A on 8/14/24.
//

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }
}

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
}

class _Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var lst = [ListNode?]()
        var current: ListNode? = head
        while current != nil {
            if lst.contains(where: { $0 === current }) {
                return true
            } else {
                lst.append(current)
            }
            current = current?.next
        }
        return false
    }
}

let lst = [3, 2, 0, -4]
let solution = _Solution()
var head: ListNode? = ListNode(3)
head?.next = ListNode(2)
head?.next?.next = ListNode(0)
head?.next?.next?.next = ListNode(-4)
head?.next?.next?.next?.next = head?.next

print(solution.hasCycle(head))
