data Tree a = Leaf a | Node (Tree a) (Tree a)
instance Functor Tree where
    fmap g (Leaf x) = Leaf (g x)
    fmap g (Node l r) = Node (fmap g l)(fmap g r)