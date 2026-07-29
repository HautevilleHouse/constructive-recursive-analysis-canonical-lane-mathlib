import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure BrouwerFixedPointPackage where
  n : ℕ
  ball : Type u
  function : ball → ball
  continuous : Prop
  fixedPoint : ball
  fixedPointProperty : function fixedPoint = fixedPoint

structure BrouwerFixedPointEvidence (B : BrouwerFixedPointPackage) where
  continuousClosed : B.continuous
  fixedPointClosed : B.function B.fixedPoint = B.fixedPoint

def BrouwerFixedPointClosed (B : BrouwerFixedPointPackage) : Prop :=
  B.continuous ∧ (B.function B.fixedPoint = B.fixedPoint)

theorem brouwer_fixed_point_closed_from_evidence (B : BrouwerFixedPointPackage) (E : BrouwerFixedPointEvidence B) :
    BrouwerFixedPointClosed B := by
  exact And.intro E.continuousClosed E.fixedPointClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse