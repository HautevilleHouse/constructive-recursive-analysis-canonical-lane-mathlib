import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure PrimitiveRecursiveFunction where
  inputType : Type
  outputType : Type
  computation : inputType → outputType
  recursiveDefinition : Prop
  terminationProof : recursiveDefinition → Prop

structure PrimitiveRecursiveObject where
  function : PrimitiveRecursiveFunction
  domainAdmissible : Prop
  codomainAdmissible : Prop

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
