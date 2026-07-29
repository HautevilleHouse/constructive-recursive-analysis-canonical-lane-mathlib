import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConstructiveRecursiveAnalysisCanonicalLaneLean.RecursiveFunctions
import HautevilleHouse.ConstructiveRecursiveAnalysisCanonicalLaneLean.AlanTuring

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ChurchTuringEvidence where
  recursiveFunctions : RecursiveFunctionsPackage
  turingMachine : TuringMachine
  equivalence : RecursiveFunctionsClosed recursiveFunctions ↔ TuringMachineHalts turingMachine ""

def ChurchTuringThesisClosed (C : ChurchTuringEvidence) : Prop :=
  C.equivalence

theorem church_turing_thesis_closed_from_evidence (C : ChurchTuringEvidence) :
    ChurchTuringThesisClosed C := by
  exact C.equivalence

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse