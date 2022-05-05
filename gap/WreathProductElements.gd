#############################################################################
##  WreathProductElements.gd
#############################################################################
##
##  This file is part of the WPE package.
##
##  This file's authors include Friedrich Rober.
##
##  Please refer to the COPYRIGHT file for details.
##
##  SPDX-License-Identifier: GPL-2.0-or-later
##
#############################################################################


#############################################################################
# Wreath Product Elements:
#############################################################################


## <#GAPDoc Label="Territory">
## <ManSection>
## <Attr Name="Territory" Arg="x"/>
## <Description>
##   returns the territory of <A>x</A>.
##   The argument <A>x</A> must be a wreath product element.
##   (see&nbsp;<Ref Sect="Wreath Cycle"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareAttribute( "Territory", IsWreathProductElement );

## <#GAPDoc Label="IsWreathCycle">
## <ManSection>
## <Attr Name="IsWreathCycle" Arg="x"/>
## <Description>
##   tests whether <A>x</A> is a wreath cycle.
##   The argument <A>x</A> must be a wreath product element.
##   (see&nbsp;<Ref Sect="Wreath Cycle"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareProperty( "IsWreathCycle", IsWreathProductElement );

## <#GAPDoc Label="IsSparseWreathCycle">
## <ManSection>
## <Attr Name="IsSparseWreathCycle" Arg="x"/>
## <Description>
##   tests whether <A>x</A> is a sparse wreath cycle.
##   The argument <A>x</A> must be a wreath product element.
##   (see&nbsp;<Ref Sect="Sparse Wreath Cycle"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareProperty( "IsSparseWreathCycle", IsWreathProductElement );

## <#GAPDoc Label="WreathCycleDecomposition">
## <ManSection>
## <Attr Name="WreathCycleDecomposition" Arg="x"/>
## <Description>
##   returns the wreath cycle decomposition of <A>x</A>,
##   i.e. a list containing wreath cycles.
##   The argument <A>x</A> must be a wreath product element.
##   (see&nbsp;<Ref Sect="Wreath Cycle"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareAttribute( "WreathCycleDecomposition", IsWreathProductElement );

# TODO: Replace these attributes
DeclareAttribute( "SparseWreathCycleConjugate", IsWreathProductElement );
DeclareAttribute( "ConjugatorWreathCycleToSparse", IsWreathProductElement );

## <#GAPDoc Label="Yade">
## <ManSection>
## <Attr Name="Yade" Arg="x, [i]"/>
## <Description>
##   returns the yade of the wreath cycle <A>x</A>
##   evaluated at the smallest territory point.
##   If the optional argument <A>i</A> is provided,
##   the function returns the yade evaluated at the point <A>i</A>.
##   The argument <A>x</A> must be a wreath cycle
##   and the optional argument <A>i</A> must be an integer
##   from the territory of <A>x</A>.
##   (see&nbsp;<Ref Sect="Wreath Cycle"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareAttribute( "Yade", IsWreathCycle );


#############################################################################
# Components:
#############################################################################


## <#GAPDoc Label="ComponentsOfWreathProduct">
## <ManSection>
## <Func Name="ComponentsOfWreathProduct" Arg="W"/>
## <Description>
##   returns the groups [K, H] of <A>W = K wr H</A>.
##   The argument <A>W</A> must be a wreath product.
##   (see&nbsp;<Ref Sect="Intro Notation"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareGlobalFunction( "ComponentsOfWreathProduct" );

## <#GAPDoc Label="TopComponentOfWreathProductElement">
## <ManSection>
## <Func Name="TopComponentOfWreathProductElement" Arg="x"/>
## <Description>
##   returns the top component of <A>x</A>.
##   The argument <A>x</A> must be a wreath product element.
##   (see&nbsp;<Ref Sect="Intro Notation"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareGlobalFunction( "TopComponentOfWreathProductElement" );
DeclareOperation( "WPE_TopComponent", [IsWreathProductElement] );

## <#GAPDoc Label="TopGroupOfWreathProduct">
## <ManSection>
## <Func Name="TopGroupOfWreathProduct" Arg="W"/>
## <Description>
##   returns the top group of the wreath product <A>W</A>.
##   (see&nbsp;<Ref Sect="Intro Notation"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareGlobalFunction( "TopGroupOfWreathProduct" );
DeclareOperation( "WPE_TopGroup", [HasWreathProductInfo] );

DeclareOperation( "WPE_TopDegree", [IsWreathProductElement] );

## <#GAPDoc Label="BaseComponentOfWreathProductElement">
## <ManSection>
## <Func Name="BaseComponentOfWreathProductElement" Arg="x, [i]"/>
## <Description>
##   returns the base component of <A>x</A>.
##   If the optional argument <A>i</A> is provided,
##   the function returns the <A>i</A>-th base component of <A>x</A>.
##   The argument <A>x</A> must be a wreath product element
##   and the optional argument <A>i</A> must be an integer.
##   (see&nbsp;<Ref Sect="Intro Notation"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareGlobalFunction( "BaseComponentOfWreathProductElement" );
DeclareOperation( "WPE_BaseComponent", [IsWreathProductElement] );

## <#GAPDoc Label="BaseGroupOfWreathProduct">
## <ManSection>
## <Func Name="BaseGroupOfWreathProduct" Arg="W, [i]"/>
## <Description>
##   returns the base group of the wreath product <A>W</A>.
##   If the optional argument <A>i</A> is provided,
##   the function returns the <A>i</A>-th factor of the base group of <A>W</A>.
##   (see&nbsp;<Ref Sect="Intro Notation"/>)
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareGlobalFunction( "BaseGroupOfWreathProduct" );
DeclareOperation( "WPE_BaseGroup", [HasWreathProductInfo] );


#############################################################################
# Isomorphism:
#############################################################################


## <#GAPDoc Label="IsomorphismToGenericWreathProduct">
## <ManSection>
## <Oper Name="IsomorphismToGenericWreathProduct" Arg="G"/>
## <Description>
##   returns an isomorphism from a specialized wreath product <A>G</A>
##   to a generic wreath product.
## </Description>
## </ManSection>
## <#/GAPDoc>
DeclareOperation( "IsomorphismToGenericWreathProduct", [HasWreathProductInfo] );
