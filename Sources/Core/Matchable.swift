//
//  Copyright © 2019 Swinject Contributors. All rights reserved.
//

// sourcery: AutoMockable
public protocol Matchable {
    func matches(_ other: Any) -> Bool
    func hash(into hasher: inout Hasher)
}

public extension Matchable where Self: Equatable {
    func matches(_ other: Any) -> Bool {
        self == (other as? Self)
    }
}

// TODO: Can we make MatchableBox types internal?
// swiftlint:disable line_length
// swiftlint:disable large_tuple
// sourcery:inline:MatchableBoxes
public struct MatchableBox1<Arg1>: Hashable, Matchable where Arg1: Hashable {
    let arg1: Arg1
}

public struct MatchableBox2<Arg1, Arg2>: Hashable, Matchable where Arg1: Hashable, Arg2: Hashable {
    let arg1: Arg1
    let arg2: Arg2
}

public struct MatchableBox3<Arg1, Arg2, Arg3>: Hashable, Matchable where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
    let arg1: Arg1
    let arg2: Arg2
    let arg3: Arg3
}

public struct MatchableBox4<Arg1, Arg2, Arg3, Arg4>: Hashable, Matchable where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
    let arg1: Arg1
    let arg2: Arg2
    let arg3: Arg3
    let arg4: Arg4
}

public struct MatchableBox5<Arg1, Arg2, Arg3, Arg4, Arg5>: Hashable, Matchable where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
    let arg1: Arg1
    let arg2: Arg2
    let arg3: Arg3
    let arg4: Arg4
    let arg5: Arg5
}

func box<Arg1>(_ arg1: Arg1) -> Arg1 {
    arg1
}

func box<Arg1>(_ arg1: Arg1) -> MatchableBox1<Arg1> where Arg1: Hashable {
    MatchableBox1(arg1: arg1)
}

func box<Arg1, Arg2>(_ arg1: Arg1, _ arg2: Arg2) -> (Arg1, Arg2) {
    (arg1, arg2)
}

func box<Arg1, Arg2>(_ arg1: Arg1, _ arg2: Arg2) -> MatchableBox2<Arg1, Arg2> where Arg1: Hashable, Arg2: Hashable {
    MatchableBox2(arg1: arg1, arg2: arg2)
}

func box<Arg1, Arg2, Arg3>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> (Arg1, Arg2, Arg3) {
    (arg1, arg2, arg3)
}

func box<Arg1, Arg2, Arg3>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> MatchableBox3<Arg1, Arg2, Arg3> where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
    MatchableBox3(arg1: arg1, arg2: arg2, arg3: arg3)
}

func box<Arg1, Arg2, Arg3, Arg4>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4) -> (Arg1, Arg2, Arg3, Arg4) {
    (arg1, arg2, arg3, arg4)
}

func box<Arg1, Arg2, Arg3, Arg4>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4) -> MatchableBox4<Arg1, Arg2, Arg3, Arg4> where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
    MatchableBox4(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4)
}

func box<Arg1, Arg2, Arg3, Arg4, Arg5>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5) -> (Arg1, Arg2, Arg3, Arg4, Arg5) {
    (arg1, arg2, arg3, arg4, arg5)
}

func box<Arg1, Arg2, Arg3, Arg4, Arg5>(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5) -> MatchableBox5<Arg1, Arg2, Arg3, Arg4, Arg5> where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
    MatchableBox5(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5)
}

// sourcery:end
