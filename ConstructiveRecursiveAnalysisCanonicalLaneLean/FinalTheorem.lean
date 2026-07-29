import ConstructiveRecursiveAnalysisCanonicalLaneLean.ComputableFunctionClosure

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.correctness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedRecursiveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_recursive_endgame (A : AdmissibleClass) : ConstrainedRecursiveClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse