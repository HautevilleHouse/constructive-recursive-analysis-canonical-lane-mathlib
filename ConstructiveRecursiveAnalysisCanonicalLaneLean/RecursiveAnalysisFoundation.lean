import canonicalLaneMathlib.AdmissibleClass
import ConstructiveRecursiveAnalysisCanonicalLaneLean.PrimitiveRecursiveAnalysis

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveAnalysisFoundation where
  object : PrimitiveRecursiveObject
  objectEvidence : object.domainAdmissible ∧ object.codomainAdmissible

def RecursiveAnalysisFoundationClosed (F : RecursiveAnalysisFoundation) : Prop :=
  F.object.domainAdmissible ∧ F.object.codomainAdmissible

theorem recursive_analysis_foundation_closed_from_evidence
    (F : RecursiveAnalysisFoundation) : RecursiveAnalysisFoundationClosed F :=
  And.intro F.objectEvidence.1 F.objectEvidence.2

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
