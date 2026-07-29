import ConstructiveRecursiveAnalysisCanonicalLaneLean.MethodPackage

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ApplicationPackage {M : RecursiveMethodPackage} where
  targetFunctional : Type u
  approximationScheme : Type v
  errorBound : Prop
  terminationGuarantee : Prop

structure ApplicationEvidence {M : RecursiveMethodPackage} (A : ApplicationPackage M) where
  errorBoundClosed : A.errorBound
  terminationGuaranteeClosed : A.terminationGuarantee

def ApplicationClosed {M : RecursiveMethodPackage} (A : ApplicationPackage M) : Prop :=
  A.errorBound ∧ A.terminationGuarantee

theorem application_closed_from_evidence {M : RecursiveMethodPackage} (A : ApplicationPackage M) (E : ApplicationEvidence A) :
    ApplicationClosed A := by
  exact And.intro E.errorBoundClosed E.terminationGuaranteeClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse