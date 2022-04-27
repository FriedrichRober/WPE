WPE_GeneratorsOfGroup := function(G)
    gens := GeneratorsOfGroup(G);
    if IsEmpty(gens) then
        gens := [()];
    fi;
    return gens;
end;

Generate := function(K, H, stream)
    local G, size;
    G := WreathProduct(K, H);
    AppendTo(stream, "gap> K := Group(", WPE_GeneratorsOfGroup(K), ");;\n");
    AppendTo(stream, "gap> H := Group(", WPE_GeneratorsOfGroup(H), ");;\n");
    size := Size(ConjugacyClasses(G));
    AppendTo(stream, "gap> size := ", size, ";;\n");
    AppendTo(stream, "gap> TestConjugacyClasses(K, H, size);\n");
    AppendTo(stream, "true\n");
end;

file := "out/testConjugacyClasses.tst";
stream:=OutputTextFile(file, false);
SetPrintFormattingStatus(stream, false);
PrintTo(stream);
AppendTo(stream, "gap> # Generated by dev/tests/conjugacyClasses/generate.g\n");
AppendTo(stream, "gap> ReadPackage(\"WPE\",\"tst/testConjugacyClasses.g\");;\n");

K := SymmetricGroup(1);
H := SymmetricGroup(1);
Generate(K, H, stream);

K := SymmetricGroup(1);
H := SymmetricGroup(5);
Generate(K, H, stream);

K := SymmetricGroup(1);
H := AlternatingGroup(5);
Generate(K, H, stream);

K := SymmetricGroup(4);
H := SymmetricGroup(1);
Generate(K, H, stream);

K := AlternatingGroup(4);
H := SymmetricGroup(1);
Generate(K, H, stream);

K := SymmetricGroup(4);
H := SymmetricGroup(5);
Generate(K, H, stream);

K := SymmetricGroup(4);
H := AlternatingGroup(5);
Generate(K, H, stream);

K := SymmetricGroup(4);
H := DihedralGroup(IsPermGroup, 10);
Generate(K, H, stream);

K := SymmetricGroup(4);
H := Group((1,2,3)(4,5));
Generate(K, H, stream);