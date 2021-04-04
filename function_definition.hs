1. Very simple I/O 
2. Very lazy
3. Strongly typed
In most languages the property of not evaluating the branch that is not taken has to be built into the language as a special feature. Otherwise constructs like:

x = (p != nullptr) ? *p : 0
wouldn't work properly. In Haskell, short-circuiting is just the side effect of laziness. The branch not taken is never used, so it won't be evaluated.

flop ? = ?
main = print $ flop (1, "one")

flop (a, b) = (b, a)


makeSegment ? = ?
main = print $ makeSegment (1, 2) (3, 4)

makeSegment p1 p2 = (p1, p2)


putQStrLn str = do {
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n' }