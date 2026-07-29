import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure RecursiveAnalysisFoundation where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  computableStructure : Prop
  effectiveSeparability : Prop
  recursiveDensity : Prop

structure RecursiveAnalysisFoundationEvidence (F : RecursiveAnalysisFoundation) where
  computableStructureClosed : F.computableStructure
  effectiveSeparabilityClosed : F.effectiveSeparability
  recursiveDensityClosed : F.recursiveDensity

def RecursiveAnalysisFoundationClosed (F : RecursiveAnalysisFoundation) : Prop :=
  F.computableStructure ∧ F.effectiveSeparability ∧ F.recursiveDensity

theorem recursive_analysis_foundation_closed_from_evidence (F : RecursiveAnalysisFoundation) (E : RecursiveAnalysisFoundationEvidence F) :
    RecursiveAnalysisFoundationClosed F := by
  exact And.intro E.computableStructureClosed (And.intro E.effectiveSeparabilityClosed E.recursiveDensityClosed)

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse