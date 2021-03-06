/*:
 [Table of contents](Table%20of%20contents) • [Previous page](@previous) • [Next page](@next)

 ## `MutableCollection.swapAt` method

 [SE-0173][SE-0173] introduces a new method for swapping two elements in a collection. Unlike the existing `swap(_:_:)` function, `swapAt(_:_:)` takes the indices of the elements to be swapped, not the elements themselves (via `inout` arguments).
 
 The reason for this addition is that `swap` with two `inout` arguments is incompatible with the new exclusive memory access rules proposed in [SE-0176][SE-0176]. The existing `swap(_:_:)` function will no longer work for swapping two elements of the same collection.

 [SE-0173]: https://github.com/apple/swift-evolution/blob/master/proposals/0173-swap-indices.md "Swift Evolution Proposal SE-0173: Add `MutableCollection.swapAt(_:_:)`"
 [SE-0176]: https://github.com/apple/swift-evolution/blob/master/proposals/0176-enforce-exclusive-access-to-memory.md "Swift Evolution Proposal SE-0176: Enforce Exclusive Access to Memory"
 */
var numbers = [1,2,3,4,5]
numbers.swapAt(0,1)

// Will be illegal in Swift 4 (not implemented yet)
swap(&numbers[3], &numbers[4])
numbers

/*: [Table of contents](Table%20of%20contents) • [Previous page](@previous) • [Next page](@next) */
