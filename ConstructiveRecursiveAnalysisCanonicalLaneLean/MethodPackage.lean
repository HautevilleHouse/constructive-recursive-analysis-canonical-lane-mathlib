import ConstructiveRecursiveAnalysisCanonicalLaneLean.Foundation

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveMethodPackage {F : RecursiveAnalysisFoundation} where
  iterationSchema : Type u
  convergenceRate : Prop
  complexityBound : Prop
  correctnessProof : Prop

structure RecursiveMethodEvidence {F : RecursiveAnalysisFoundation} (M : RecursiveMethodPackage F) where
  convergenceRateClosed : M.convergenceRate
  complexityBoundClosed : M.complexityBound
  correctnessProofClosed : M.correctnessProof

def RecursiveMethodClosed {F : RecursiveAnalysisFoundation} (M : RecursiveMethodPackage F) : Prop :=
  M.convergenceRate ∧ M.complexityBound ∧ M.correctnessProof

theorem recursive_method_closed_from_evidence {F : RecursiveAnalysisFoundation} (M : RecursiveMethodPackage F) (E : RecursiveMethodEvidence M) :
    RecursiveMethodClosed M := by
  exact And.intro E.convergenceRateClosed (And.intro E.complexityBoundClosed E.correctnessProofClosed)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse