import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveAdmittedObject where
  carrier : Type
  computation : Prop
  termination : Prop
  correctness : Prop
  conclusion : correctness

structure AdmissibleClass where
  object : RecursiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.correctness ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse