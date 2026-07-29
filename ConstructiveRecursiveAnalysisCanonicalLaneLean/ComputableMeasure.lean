import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ComputableMeasurePackage where
  spaceType : Type
  measurableSetFamily : Set (Set spaceType)
  measureFunction : (Set spaceType) → ℝ
  additivityCondition : ∀ (A B : Set spaceType), Disjoint A B → measureFunction (A ∪ B) = measureFunction A + measureFunction B

structure ComputableMeasureEvidence (M : ComputableMeasurePackage) where
  additivityConditionClosed : ∀ A B, Disjoint A B → M.measureFunction (A ∪ B) = M.measureFunction A + M.measureFunction B
  measureFunctionNonnegative : ∀ A, 0 ≤ M.measureFunction A

def ComputableMeasureClosed (M : ComputableMeasurePackage) : Prop :=
  (∀ A B, Disjoint A B → M.measureFunction (A ∪ B) = M.measureFunction A + M.measureFunction B) ∧
  (∀ A, 0 ≤ M.measureFunction A)

theorem computable_measure_closed (M : ComputableMeasurePackage)
    (E : ComputableMeasureEvidence M) : ComputableMeasureClosed M := by
  exact And.intro E.additivityConditionClosed E.measureFunctionNonnegative

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
