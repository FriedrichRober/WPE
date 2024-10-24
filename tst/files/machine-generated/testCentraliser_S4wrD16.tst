# Generated by dev/tests/centraliser/generate.g
# Do not edit this file manually!
gap> START_TEST("testCentraliser_S4wrD16.tst");
gap> ReadPackage("WPE","tst/testCentraliser.g");;

#
gap> K := Group([ (1,2,3,4), (1,2) ]);;
gap> H := Group([ (1,2,3,4,5,6,7,8), (2,8)(3,7)(4,6) ]);;
gap> G := WreathProduct(K, H);;

# Element 1
gap> g := ( 1,27, 3,25)( 2,26)( 4,28)( 5,22, 7,24, 6,21, 8,23)( 9,18,10,20)(11,19)(12,17)(13,16)(14,15)(29,30,31);;
gap> Cgens := [ ( 1,27, 3,25)( 2,26)( 4,28)( 5,22, 7,24, 6,21, 8,23)( 9,18,10,20)(11,19)(12,17)(13,16)(14,15)(29,30,31), (13,15)(14,16), (13,16)(14,15), (13,16), ( 2, 4)(26,28), (11,12)(17,19), ( 9,10)(13,14)(15,16)(18,20), ( 1, 3)(13,14)(15,16)(25,27) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 2
gap> g := ( 1,14)( 2,16, 4,15, 3,13)( 5,10)( 6,12)( 7,11)( 8, 9)(17,29)(18,32,19,30)(20,31)(21,25,22,26,24,28)(23,27);;
gap> Cgens := [ ( 1,14)( 2,16, 4,15, 3,13)( 5,10)( 6,12)( 7,11)( 8, 9)(17,29)(18,32,19,30)(20,31)(21,25,22,26,24,28)(23,27), ( 5, 7)(10,11), ( 5, 6)(10,12), ( 5, 7, 8)( 9,10,11), ( 5, 7, 8)( 9,10,11)(17,20)(29,31), ( 2, 3, 4)( 5, 7, 8)( 9,10,11)(13,15,16)(17,20)(29,31) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 3
gap> g := ( 1,14, 4,13)( 2,16)( 3,15)( 5,12, 7,11)( 6, 9)( 8,10)(17,30,18,32,20,31,19,29)(21,28,23,25,22,27,24,26);;
gap> Cgens := [ ( 1,14, 4,13)( 2,16)( 3,15)( 5,12, 7,11)( 6, 9)( 8,10)(17,30,18,32,20,31,19,29)(21,28,23,25,22,27,24,26), ( 2, 3)(15,16), ( 6, 8)( 9,10), ( 1, 4)(13,14), ( 5, 7)(11,12), (17,18,20,19)(29,30,32,31) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 4
gap> g := ( 1,21, 2,23, 4,24, 3,22)( 5,18, 6,20)( 7,17, 8,19)( 9,14,12,13,11,15)(10,16)(25,30)(26,29)(27,32,28,31);;
gap> Cgens := [ ( 1,21, 2,23, 4,24, 3,22)( 5,18, 6,20)( 7,17, 8,19)( 9,14,12,13,11,15)(10,16)(25,30)(26,29)(27,32,28,31), (25,26)(29,30), ( 7, 8)(17,19)(25,26)(29,30), ( 5, 6)(18,20)(25,26)(29,30), ( 5, 7)( 6, 8)(17,18)(19,20)(25,26)(29,30), (25,26)(27,28)(29,30)(31,32) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 5
gap> g := ( 1,25,20,10, 3,26,19,11, 2,27,17,12)( 4,28,18, 9)( 5,31,24,16)( 6,32,21,14)( 7,29,23,15, 8,30,22,13);;
gap> Cgens := [ ( 1,25,20,10, 3,26,19,11, 2,27,17,12)( 4,28,18, 9)( 5,31,24,16)( 6,32,21,14)( 7,29,23,15, 8,30,22,13), ( 5, 6)(14,16)(21,24)(31,32) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 6
gap> g := ( 1,32,25,24,19,16,10, 8)( 2,29,27,22,18,14,11, 5)( 3,30,28,23,17,15,12, 7)( 4,31,26,21,20,13, 9, 6);;
gap> Cgens := [ ( 1,32,25,24,19,16,10, 8)( 2,29,27,22,18,14,11, 5)( 3,30,28,23,17,15,12, 7)( 4,31,26,21,20,13, 9, 6), ( 1, 3)( 7, 8)(10,12)(15,16)(17,19)(23,24)(25,28)(30,32), ( 1, 3, 4)( 6, 8, 7)( 9,10,12)(13,16,15)(17,20,19)(21,24,23)(25,28,26)(30,31,32), ( 1, 3, 4, 2)( 5, 8, 7, 6)( 9,11,10,12)(13,14,16,15)(17,20,18,19)(21,22,24,23)(25,28,26,27)(29,32,30,31) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 7
gap> g := ( 1, 2)( 5,30, 7,29, 8,32)( 6,31)( 9,25,11,26,12,27)(10,28)(13,21,15,23)(14,24)(16,22)(17,20,18);;
gap> Cgens := [ ( 1, 2)( 5,30, 7,29, 8,32)( 6,31)( 9,25,11,26,12,27)(10,28)(13,21,15,23)(14,24)(16,22)(17,20,18), (3,4), (1,2), (14,16)(22,24), (14,16)(17,18,20)(22,24), ( 5, 7, 8)(14,16)(22,24)(29,32,30) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 8
gap> g := ( 1, 8, 4, 6, 2, 5)( 3, 7)( 9,31,11,29,12,32)(10,30)(13,28,15,25,16,26)(14,27)(17,21,18,22,19,23,20,24);;
gap> Cgens := [ ( 1, 8, 4, 6, 2, 5)( 3, 7)( 9,31,11,29,12,32)(10,30)(13,28,15,25,16,26)(14,27)(17,21,18,22,19,23,20,24), (13,15,16)(25,26,28), (1,2,4)(5,6,8) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 9
gap> g := ( 1, 4, 3)( 5,29, 8,31, 7,32)( 6,30)( 9,26)(10,28,11,27)(12,25)(13,24)(14,22)(15,21,16,23)(17,19,18,20);;
gap> Cgens := [ ( 1, 4, 3)( 5,29, 8,31, 7,32)( 6,30)( 9,26)(10,28,11,27)(12,25)(13,24)(14,22)(15,21,16,23)(17,19,18,20), ( 9,12)(25,26), (13,14)(22,24), ( 1, 3, 4)(13,14)(22,24), (13,14)(17,18)(19,20)(22,24), (13,14)(17,19,18,20)(22,24), (10,11)(13,14)(22,24)(27,28) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 10
gap> g := ( 1,19, 2,18)( 3,17)( 4,20)( 5,22)( 6,23, 8,21)( 7,24)( 9,26)(10,28,12,27,11,25)(13,29)(14,30)(15,31,16,32);;
gap> Cgens := [ ( 1,19, 2,18)( 3,17)( 4,20)( 5,22)( 6,23, 8,21)( 7,24)( 9,26)(10,28,12,27,11,25)(13,29)(14,30)(15,31,16,32), ( 3, 4)(17,20), ( 5, 7)(22,24), ( 5, 7)(13,14)(22,24)(29,30), ( 5, 7)(13,14)(15,16)(22,24)(29,30)(31,32), ( 5, 7)( 6, 8)(13,14)(21,23)(22,24)(29,30), ( 1,18, 2,19)( 3,17)( 4,20)( 5,14)( 6,15)( 7,13)( 8,16)(21,32)(22,30)(23,31)(24,29) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 11
gap> g := ( 1,27,20,11, 3,25,18,12, 2,26,19,10, 4,28,17, 9)( 5,29,21,14, 6,30,23,13, 7,31,24,16, 8,32,22,15);;
gap> Cgens := [ ( 1,27,20,11, 3,25,18,12, 2,26,19,10, 4,28,17, 9)( 5,29,21,14, 6,30,23,13, 7,31,24,16, 8,32,22,15), ( 1, 2)( 3, 4)( 9,12)(10,11)(17,18)(19,20)(25,28)(26,27), ( 1, 3, 2, 4)( 9,11,12,10)(17,20,18,19)(25,26,28,27), ( 1,29,27,21,20,14,11, 6, 3,30,25,23,18,13,12, 7, 2,31,26,24,19,16,10, 8, 4,32,28,22,17,15, 9, 5) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 12
gap> g := ( 1,18, 4,19, 3,20)( 2,17)( 5,23, 8,21, 7,24, 6,22)( 9,26)(10,25)(11,28)(12,27)(13,29,16,32,14,30,15,31);;
gap> Cgens := [ ( 1,18, 4,19, 3,20)( 2,17)( 5,23, 8,21, 7,24, 6,22)( 9,26)(10,25)(11,28)(12,27)(13,29,16,32,14,30,15,31), ( 9,11)(26,28), ( 9,11,12)(26,28,27), ( 9,11,12,10)(25,26,28,27), ( 5, 6, 7, 8)( 9,11,12,10)(21,23,22,24)(25,26,28,27), ( 1,18, 4,19, 3,20)( 2,17)( 5,13)( 6,15)( 7,14)( 8,16)( 9,11,12,10)(21,32)(22,31)(23,29)(24,30)(25,26,28,27) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 13
gap> g := ( 1, 8,12,14,17,24,28,30)( 2, 6,10,13,20,22,27,29)( 3, 5, 9,16,19,23,25,32)( 4, 7,11,15,18,21,26,31);;
gap> Cgens := [ ( 1, 8,12,14,17,24,28,30)( 2, 6,10,13,20,22,27,29)( 3, 5, 9,16,19,23,25,32)( 4, 7,11,15,18,21,26,31), ( 1, 3)( 5, 8)( 9,12)(14,16)(17,19)(23,24)(25,28)(30,32), ( 1, 3, 4)( 5, 7, 8)( 9,11,12)(14,16,15)(17,19,18)(21,24,23)(25,26,28)(30,32,31), ( 1, 3, 4, 2)( 5, 7, 6, 8)( 9,11,10,12)(13,14,16,15)(17,19,18,20)(21,22,24,23)(25,26,27,28)(29,30,32,31) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 14
gap> g := ( 1,22,10,31,18, 5,25,16, 4,24, 9,29,19, 6,27,15, 2,21,12,32,17, 7,28,13, 3,23,11,30,20, 8,26,14);;
gap> Cgens := [ ( 1,22,10,31,18, 5,25,16, 4,24, 9,29,19, 6,27,15, 2,21,12,32,17, 7,28,13, 3,23,11,30,20, 8,26,14) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 15
gap> g := ( 1,11,17,25, 3,12,18,28, 2, 9,19,27)( 4,10,20,26)( 5,14,23,31)( 6,13,21,29, 7,15,22,30, 8,16,24,32);;
gap> Cgens := [ ( 1,11,17,25, 3,12,18,28, 2, 9,19,27)( 4,10,20,26)( 5,14,23,31)( 6,13,21,29, 7,15,22,30, 8,16,24,32), ( 1, 2, 3)( 9,12,11)(17,19,18)(25,27,28), ( 1,29,25,22,18,16, 9, 6)( 2,32,27,21,17,15,12, 8)( 3,30,28,24,19,13,11, 7)( 4,31,26,23,20,14,10, 5) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 16
gap> g := ( 1,11,17,28)( 2,10,19,25, 3, 9,20,27, 4,12,18,26)( 5,14,24,32, 7,13,23,31, 8,16,21,30, 6,15,22,29);;
gap> Cgens := [ ( 1,11,17,28)( 2,10,19,25, 3, 9,20,27, 4,12,18,26)( 5,14,24,32, 7,13,23,31, 8,16,21,30, 6,15,22,29) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 17
gap> g := ( 1,11,17,26)( 2,12,18,27)( 3,10,20,25)( 4, 9,19,28)( 5,14,21,29, 8,16,23,31, 6,13,24,32)( 7,15,22,30);;
gap> Cgens := [ ( 1,11,17,26)( 2,12,18,27)( 3,10,20,25)( 4, 9,19,28)( 5,14,21,29, 8,16,23,31, 6,13,24,32)( 7,15,22,30), ( 2, 4)( 9,12)(18,19)(27,28), ( 1, 2)(11,12)(17,18)(26,27), ( 1, 2, 3)(10,11,12)(17,18,20)(25,26,27) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 18
gap> g := ( 1,31,27,22,17,16,12, 5, 4,32,28,24,18,13,10, 8, 3,30,25,21,19,15,11, 6, 2,29,26,23,20,14, 9, 7);;
gap> Cgens := [ ( 1,31,27,22,17,16,12, 5, 4,32,28,24,18,13,10, 8, 3,30,25,21,19,15,11, 6, 2,29,26,23,20,14, 9, 7) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 19
gap> g := ( 1,13,25, 8,20,30,11,23, 3,14,28, 6,18,29,12,22, 4,15,27, 7,17,31, 9,21, 2,16,26, 5,19,32,10,24);;
gap> Cgens := [ ( 1,13,25, 8,20,30,11,23, 3,14,28, 6,18,29,12,22, 4,15,27, 7,17,31, 9,21, 2,16,26, 5,19,32,10,24) ];;
gap> TestCentraliser(G, g, Cgens);
true

# Element 20
gap> g := ( 1,12,18,26, 2,11,17,27)( 3,10,19,28)( 4, 9,20,25)( 5,14,24,31, 6,16,21,29)( 7,15,23,30, 8,13,22,32);;
gap> Cgens := [ ( 1,12,18,26, 2,11,17,27)( 3,10,19,28)( 4, 9,20,25)( 5,14,24,31, 6,16,21,29)( 7,15,23,30, 8,13,22,32), ( 3, 4)( 9,10)(19,20)(25,28), ( 5, 6)(14,16)(21,24)(29,31), ( 1, 2)(11,12)(17,18)(26,27), ( 5, 7)( 6, 8)(13,16)(14,15)(21,22)(23,24)(29,32)(30,31) ];;
gap> TestCentraliser(G, g, Cgens);
true

#
gap> STOP_TEST("testCentraliser_S4wrD16.tst");
