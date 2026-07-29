import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure OracleMachineModelPackage where
  oracleType : Type
  querySpace : oracleType → Prop
  answerFunction : oracleType → oracleType
  deterministicComputation : oracleType → Prop

structure OracleMachineModelEvidence (O : OracleMachineModelPackage) where
  querySpaceClosed : ∀ q, O.querySpace q → O.deterministicComputation q
  answerFunctionClosed : ∀ q, O.deterministicComputation (O.answerFunction q)

def OracleMachineModelClosed (O : OracleMachineModelPackage) : Prop :=
  (∀ q, O.querySpace q → O.deterministicComputation q) ∧
  (∀ q, O.deterministicComputation (O.answerFunction q))

theorem oracle_machine_model_closed (O : OracleMachineModelPackage)
    (E : OracleMachineModelEvidence O) : OracleMachineModelClosed O := by
  exact And.intro E.querySpaceClosed E.answerFunctionClosed

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse
