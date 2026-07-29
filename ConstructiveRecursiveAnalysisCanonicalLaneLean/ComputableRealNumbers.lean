import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ComputableReal where
  cauchy : ℕ → ℚ
  modulus : ℕ → ℕ
  fastConvergence : ℕ → ℕ → Prop
  modulusCorrect : ∀ (k : ℕ), ∀ (n m : ℕ), n ≥ modulus k → m ≥ modulus k → |(cauchy n - cauchy m)| < (1 / (2^k : ℚ))

structure ComputableRealPackage where
  reals : Type u
  addition : reals → reals → reals
  multiplication : reals → reals → reals
  order : reals → reals → Prop
  additionWellDefined : Prop
  multiplicationWellDefined : Prop
  orderDecidable : Prop

structure ComputableRealEvidence (C : ComputableRealPackage) where
  additionWellDefinedClosed : C.additionWellDefined
  multiplicationWellDefinedClosed : C.multiplicationWellDefined
  orderDecidableClosed : C.orderDecidable

def ComputableRealClosed (C : ComputableRealPackage) : Prop :=
  C.additionWellDefined ∧ C.multiplicationWellDefined ∧ C.orderDecidable

theorem computable_real_closed_from_evidence (C : ComputableRealPackage) (E : ComputableRealEvidence C) :
    ComputableRealClosed C := by
  exact And.intro E.additionWellDefinedClosed (And.intro E.multiplicationWellDefinedClosed E.orderDecidableClosed)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse