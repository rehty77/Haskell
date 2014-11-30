head' [] = error "MonsterFunctions.head: Can't take the head off an empty list, dummy!"
head' (x:_) = x

tail' [] = error "MonsterFunctions.tail: empty list"
tail' (_:xs) = xs

last' [] = error "MonsterFunctions.last: empty list"
last' (x:[]) = x
last' (x:xs) = last' xs

init' [] = error "MonsterFunctions.init: empty list"
init' xs = take ((length xs)-1) xs