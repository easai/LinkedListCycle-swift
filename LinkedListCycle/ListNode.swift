//
//  ListNode.swift
//  LinkedListCycle
//
//  Created by E A on 8/16/24.
//

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }

    func dump() {
        var lst = [ListNode?]()
        var head = self
        repeat {
            if lst.contains(where: { $0 === head }) {
                break
            } else {
                lst.append(head)
            }
            print(head.val)
            if head.next != nil {
                head = head.next!
            } else {
                break
            }
        } while true
    }
}

func createList(_ lst: [Int], _ pos: Int) -> ListNode? {
    if lst.isEmpty {
        return nil
    }
    var head: ListNode?
    var prev: ListNode?
    var tail: ListNode?
    for (i, item) in lst.enumerated() {
        let node = ListNode(item)
        if i == 0 {
            head = node
        } else {
            prev?.next = node
        }
        if i == pos {
            tail = node
        }
        prev = node
    }
    if pos >= 0, pos < lst.count {
        prev?.next = tail
    }
    return head
}
