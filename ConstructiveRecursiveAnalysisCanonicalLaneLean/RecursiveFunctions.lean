import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveFunctions where
  domain : Type
  codomain : Type
  func : domain → codomain
  computable : Prop

structure RecursiveFunctionsPackage where
  primRec : RecursiveFunctions
  muRec : RecursiveFunctions
  partialRec : RecursiveFunctions
  closureUnderPrimRec : Prop
  closureUnderMu : Prop
  closureUnderComposition : Prop
  closureUnderPrimRecClosed : closureUnderPrimRec
  closureUnderMuClosed : closureUnderMu
  closureUnderCompositionClosed : closureUnderComposition

def RecursiveFunctionsClosed (R : RecursiveFunctionsPackage) : Prop :=
  R.closureUnderPrimRec ∧ R.closureUnderMu ∧ R.closureUnderComposition

theorem recursive_functions_closed_from_package (R : RecursiveFunctionsPackage) :
    RecursiveFunctionsClosed R := by
  exact And.intro R.closureUnderPrimRecClosed
    (And.intro R.closureUnderMuClosed R.closureUnderCompositionClosed)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse