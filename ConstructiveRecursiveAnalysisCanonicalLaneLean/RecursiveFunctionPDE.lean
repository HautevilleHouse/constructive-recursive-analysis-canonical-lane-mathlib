import canonicalLaneMathlib.AdmissibleClass
import ConstructiveRecursiveAnalysisCanonicalLaneLean.PrimitiveRecursiveAnalysis

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveFunctionPDE (G : PrimitiveRecursiveObject) where
  functionalEquation : Prop
  fixedPointIteration : Prop
  convergenceCondition : Prop

structure RecursiveFunctionPDEEvidence {G : PrimitiveRecursiveObject} (F : RecursiveFunctionPDE G) where
  functionalEquationClosed : F.functionalEquation
  fixedPointIterationClosed : F.fixedPointIteration
  convergenceConditionClosed : F.convergenceCondition

def RecursiveFunctionPDEClosed {G : PrimitiveRecursiveObject} (F : RecursiveFunctionPDE G) : Prop :=
  F.functionalEquation ∧ F.fixedPointIteration ∧ F.convergenceCondition

theorem recursive_function_pde_closed_from_evidence
    {G : PrimitiveRecursiveObject} (F : RecursiveFunctionPDE G)
    (E : RecursiveFunctionPDEEvidence F) : RecursiveFunctionPDEClosed F :=
  And.intro E.functionalEquationClosed
    (And.intro E.fixedPointIterationClosed E.convergenceConditionClosed)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
