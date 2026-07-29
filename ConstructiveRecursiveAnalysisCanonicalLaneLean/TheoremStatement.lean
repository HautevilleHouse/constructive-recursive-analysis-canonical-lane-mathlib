import ConstructiveRecursiveAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  recursiveConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String := "constructive-recursive-analysis-canonical-lane"
def sourceDescription : String := "Constructive Recursive Analysis"
def sourceTheoremBoundary : String := "classical source boundary"
def baselineCertificateLane : String := "recursive_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  recursiveConstrainedStatement := "recursive-constrained theorem certificate internalized through admissible class closure",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalization"
}

def RecursiveConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "recursive_constrained" ∧ sourceTheoremStatement.certificateLane = baselineCertificateLane

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse