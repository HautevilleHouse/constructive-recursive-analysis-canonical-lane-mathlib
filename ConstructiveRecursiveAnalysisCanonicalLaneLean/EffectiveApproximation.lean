import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure EffectiveApproximationPackage where
  space : Type
  approximationIndex : ℕ
  approximationFunction : ℕ → space → space
  limitProperty : space → space → Prop

structure EffectiveApproximationEvidence (A : EffectiveApproximationPackage) where
  approximationFunctionClosed : ∀ n x, A.approximationFunction n x = x → A.limitProperty (A.approximationFunction n x) x
  limitPropertyClosed : ∀ x y, A.limitProperty x y → A.limitProperty y x

def EffectiveApproximationClosed (A : EffectiveApproximationPackage) : Prop :=
  (∀ n x, A.approximationFunction n x = x → A.limitProperty (A.approximationFunction n x) x) ∧
  (∀ x y, A.limitProperty x y → A.limitProperty y x)

theorem effective_approximation_closed (A : EffectiveApproximationPackage)
    (E : EffectiveApproximationEvidence A) : EffectiveApproximationClosed A := by
  exact And.intro E.approximationFunctionClosed E.limitPropertyClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
