import ConstructiveRecursiveAnalysisCanonicalLaneLean.RecursiveRealArithmetic

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ComputableFunctionPackage {R : RecursiveRealArithmeticPackage} where
  functionType : Type
  computableFunction : Prop
  closureUnderComposition : Prop
  closureUnderPrimitiveRecursion : Prop
  closureUnderMinimization : Prop
  computableFunctionTerm : computableFunction
  closureUnderCompositionTerm : closureUnderComposition
  closureUnderPrimitiveRecursionTerm : closureUnderPrimitiveRecursion
  closureUnderMinimizationTerm : closureUnderMinimization

structure ComputableFunctionEvidence {R : RecursiveRealArithmeticPackage} (C : ComputableFunctionPackage R) where
  computableFunctionClosed : C.computableFunction
  closureUnderCompositionClosed : C.closureUnderComposition
  closureUnderPrimitiveRecursionClosed : C.closureUnderPrimitiveRecursion
  closureUnderMinimizationClosed : C.closureUnderMinimization

def ComputableFunctionClosed {R : RecursiveRealArithmeticPackage} (C : ComputableFunctionPackage R) : Prop :=
  C.computableFunction ∧ C.closureUnderComposition ∧ C.closureUnderPrimitiveRecursion ∧ C.closureUnderMinimization

theorem computable_function_closed_from_evidence {R : RecursiveRealArithmeticPackage} (C : ComputableFunctionPackage R) (E : ComputableFunctionEvidence C) : ComputableFunctionClosed C :=
  And.intro E.computableFunctionClosed (And.intro E.closureUnderCompositionClosed (And.intro E.closureUnderPrimitiveRecursionClosed E.closureUnderMinimizationClosed))

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse