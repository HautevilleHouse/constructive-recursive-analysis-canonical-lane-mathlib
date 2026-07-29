import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursivePartialFunctionPackage where
  dataType : Type
  baseCase : dataType → Prop
  recursionStep : dataType → dataType
  terminationGuarantee : Prop
  graphRelation : dataType → dataType → Prop

structure RecursivePartialFunctionEvidence (R : RecursivePartialFunctionPackage) where
  baseCaseClosed : ∀ x, R.baseCase x → R.graphRelation x x
  recursionStepClosed : ∀ x, R.graphRelation x (R.recursionStep x) → R.terminationGuarantee

def RecursivePartialFunctionClosed (R : RecursivePartialFunctionPackage) : Prop :=
  (∀ x, R.baseCase x → R.graphRelation x x) ∧
  (∀ x, R.graphRelation x (R.recursionStep x) → R.terminationGuarantee)

theorem recursive_partial_function_closed (R : RecursivePartialFunctionPackage)
    (E : RecursivePartialFunctionEvidence R) : RecursivePartialFunctionClosed R := by
  exact And.intro E.baseCaseClosed E.recursionStepClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
