import ConstructiveRecursiveAnalysisCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RecursiveAnalysisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse