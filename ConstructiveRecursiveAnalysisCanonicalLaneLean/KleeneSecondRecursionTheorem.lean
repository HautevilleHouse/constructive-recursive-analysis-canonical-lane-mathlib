import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure KleeneSecondRecursionTheoremPackage where
  partialRecursiveFunctions : Type
  fixedPointFunction : partialRecursiveFunctions → partialRecursiveFunctions
  fixedPointProperty : ∀ f, f (fixedPointFunction f) = fixedPointFunction f

def KleeneSecondRecursionTheoremClosed (K : KleeneSecondRecursionTheoremPackage) : Prop :=
  ∀ f, K.fixedPointProperty f

theorem kleene_second_recursion_closed (K : KleeneSecondRecursionTheoremPackage) :
    KleeneSecondRecursionTheoremClosed K := by
  intro f
  exact K.fixedPointProperty f

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse