import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveApproximationAdmissibleClass where
  approximationSpace : Type
  recursiveApproximation : ℕ → approximationSpace → approximationSpace
  convergencePoint : approximationSpace
  admissibleCondition : ∀ ε > 0, ∃ N, ∀ n ≥ N,
    recursiveApproximation n convergencePoint = convergencePoint

def RAClosed (R : RecursiveApproximationAdmissibleClass) : Prop :=
  ∀ ε > 0, ∃ N, ∀ n ≥ N, R.recursiveApproximation n R.convergencePoint = R.convergencePoint

theorem RA_closed (R : RecursiveApproximationAdmissibleClass) : RAClosed R :=
  R.admissibleCondition

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
