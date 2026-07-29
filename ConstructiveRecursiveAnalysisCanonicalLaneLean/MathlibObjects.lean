import ConstructiveRecursiveAnalysisCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RecursiveAnalysisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RecursiveAnalysisAdmittedObject where
  space : RecursiveAnalysisSpace
  computableFunctional : Prop
  effectiveApproximation : Prop
  limitObject : Type
  limitTopology : TopologicalSpace limitObject
  convergenceGuaranteed : Prop
  conclusion : convergenceGuaranteed

structure RecursiveAnalysisEndgameState where
  object : RecursiveAnalysisAdmittedObject

def RecursiveAnalysisWitnessClosed (O : RecursiveAnalysisAdmittedObject) : Prop :=
  O.convergenceGuaranteed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse