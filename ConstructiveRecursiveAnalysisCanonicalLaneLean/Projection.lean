import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

def constructiveProjection : Projection AdmittedObject := {
  toFun := λ x => x,
  idempotent := by intro x; rfl
}

theorem constructive_projection_idempotent (x : AdmittedObject) :
    constructiveProjection.toFun (constructiveProjection.toFun x) = constructiveProjection.toFun x := by
  exact constructiveProjection.idempotent x

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
