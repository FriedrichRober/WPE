gap> TestConjugacy := function(K, H, n)
>     local G, i, g, h, c;
>     G := WreathProduct(K, H);;
>     for i in [1..n] do
>         g := PseudoRandom(G);
>         h := g ^ PseudoRandom(G);
>         c := RepresentativeAction(G, g, h);
>         if c = fail or g ^ c <> h then
>             return false;
>         fi;
>     od;
>     return true;
> end;;
gap> K := AlternatingGroup(15);;
gap> H := SymmetricGroup(25);;
gap> TestConjugacy(K, H, 20);
true
gap> K := AlternatingGroup(15);;
gap> H := DirectProduct([SymmetricGroup(10),SymmetricGroup(10),SymmetricGroup(5)]);;
gap> TestConjugacy(K, H, 20);
true
