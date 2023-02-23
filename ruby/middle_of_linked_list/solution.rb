# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    work_array = [head.val]
    while !head.next.nil?
        head = head.next
        work_array << head.val
    end
    
    work_array_middle = work_array.size / 2
    if work_array.size % 2 == 0
        work_array[(work_array_middle)..(work_array.size - 1)]
    else
        work_array[work_array_middle.floor..work_array.size]
    end
end