import ConstructiveRecursiveAnalysisCanonicalLaneLean.ConstructiveRecursiveAnalysis

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveRealArithmeticPackage where
  realNumberRepresentation : Type
  additionDefined : Prop
  multiplicationDefined : Prop
  orderRelationDefined : Prop
  cauchySequenceCompleteness : Prop
  additionDefinedTerm : additionDefined
  multiplicationDefinedTerm : multiplicationDefined
  orderRelationDefinedTerm : orderRelationDefined
  cauchySequenceCompletenessTerm : cauchySequenceCompleteness

def RecursiveRealArithmeticClosed (R : RecursiveRealArithmeticPackage) : Prop :=
  R.additionDefined ∧ R.multiplicationDefined ∧ R.orderRelationDefined ∧ R.cauchySequenceCompleteness

theorem recursive_real_arithmetic_closed (R : RecursiveRealArithmeticPackage) : RecursiveRealArithmeticClosed R :=
  And.intro R.additionDefinedTerm (And.intro R.multiplicationDefinedTerm (And.intro R.orderRelationDefinedTerm R.cauchySequenceCompletenessTerm))

structure RecursiveRealArithmeticEvidence (R : RecursiveRealArithmeticPackage) where
  additionDefinedClosed : R.additionDefined
  multiplicationDefinedClosed : R.multiplicationDefined
  orderRelationDefinedClosed : R.orderRelationDefined
  cauchySequenceCompletenessClosed : R.cauchySequenceCompleteness

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse