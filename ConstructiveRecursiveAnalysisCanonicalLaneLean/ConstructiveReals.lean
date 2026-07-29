import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConstructiveRecursiveAnalysisCanonicalLaneLean

structure ConstructiveReals where
  carrier : Type
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  zero : carrier
  one : carrier
  plusAssoc : ∀ a b c, plus (plus a b) c = plus a (plus b c)
  plusComm : ∀ a b, plus a b = plus b a
  zeroAdd : ∀ a, plus zero a = a
  addZero : ∀ a, plus a zero = a
  timesAssoc : ∀ a b c, times (times a b) c = times a (times b c)
  timesComm : ∀ a b, times a b = times b a
  oneTimes : ∀ a, times one a = a
  timesOne : ∀ a, times a one = a
  distrib : ∀ a b c, times a (plus b c) = plus (times a b) (times a c)
  zeroTimes : ∀ a, times zero a = zero
  timesZero : ∀ a, times a zero = zero

structure ConstructiveRealsClosed (R : ConstructiveReals) : Prop where
  plusAssocClosed : R.plusAssoc
  plusCommClosed : R.plusComm
  zeroAddClosed : R.zeroAdd
  addZeroClosed : R.addZero
  timesAssocClosed : R.timesAssoc
  timesCommClosed : R.timesComm
  oneTimesClosed : R.oneTimes
  timesOneClosed : R.timesOne
  distribClosed : R.distrib
  zeroTimesClosed : R.zeroTimes
  timesZeroClosed : R.timesZero

end ConstructiveRecursiveAnalysisCanonicalLaneLean
end HautevilleHouse