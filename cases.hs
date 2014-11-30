head' :: [a] -> a
head' xs = case xs of [] -> error "cases.head': Empty list"
                      (x:_) -> x