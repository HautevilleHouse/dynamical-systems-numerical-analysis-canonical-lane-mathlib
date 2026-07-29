import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure LyapunovExponentPackage where
  system : Type u
  orbit : Type v
  tangentMap : Type w
  growthRate : Prop
  exponentComputed : Prop
  regularityAssured : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  growthRateClosed : L.growthRate
  exponentComputedClosed : L.exponentComputed
  regularityAssuredClosed : L.regularityAssured

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.growthRate ∧ L.exponentComputed ∧ L.regularityAssured

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.growthRateClosed (And.intro E.exponentComputedClosed E.regularityAssuredClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse