import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure KleeneTreePackage where
  branching : ℕ → ℕ
  paths : Type u
  pathExists : Prop
  finitelyBranching : Prop

structure KleeneTreeEvidence (K : KleeneTreePackage) where
  pathExistsClosed : K.pathExists
  finitelyBranchingClosed : K.finitelyBranching

def KleeneTreeClosed (K : KleeneTreePackage) : Prop :=
  K.pathExists ∧ K.finitelyBranching

theorem kleene_tree_closed_from_evidence (K : KleeneTreePackage) (E : KleeneTreeEvidence K) :
    KleeneTreeClosed K := by
  exact And.intro E.pathExistsClosed E.finitelyBranchingClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse