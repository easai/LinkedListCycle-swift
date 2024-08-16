//
//  naive.swift
//  LinkedListCycle
//
//  Created by E A on 8/16/24.
//

class NaiveSolution {
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

    func test() {
        let lst = [3, 2, 0, -4]
        var head = createList(lst, 1)
        head?.dump()
        print(hasCycle(head))
    }
}
