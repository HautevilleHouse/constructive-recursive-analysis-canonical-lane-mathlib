import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states → alphabet → states × alphabet × Direction
  startState : states
  acceptState : states
  rejectState : states

inductive Direction where
  | L
  | R
  | N

def TuringMachineStep (tm : TuringMachine) (state : tm.states) (tape : List tm.alphabet) : Option (tm.states × List tm.alphabet) :=
  match tape with
  | [] => none
  | symbol :: rest =>
    let (newState, newSymbol, dir) := tm.transition state symbol
    match dir with
    | Direction.L => some (newState, newSymbol :: rest)
    | Direction.R => some (newState, rest ++ [newSymbol])
    | Direction.N => some (newState, newSymbol :: rest)

structure TuringMachineHalts (tm : TuringMachine) (input : tm.alphabet) : Prop where
  computation : List tm.alphabet
  haltsAtAccept : True

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse