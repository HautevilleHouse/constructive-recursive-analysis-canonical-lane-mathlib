import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveFunctionPackage where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  computable : Prop

structure RecursiveFunctionEvidence (F : RecursiveFunctionPackage) where
  computableClosed : F.computable

def RecursiveFunctionClosed (F : RecursiveFunctionPackage) : Prop :=
  F.computable

theorem recursive_function_closed_from_evidence (F : RecursiveFunctionPackage) (E : RecursiveFunctionEvidence F) :
    RecursiveFunctionClosed F := by
  exact E.computableClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse