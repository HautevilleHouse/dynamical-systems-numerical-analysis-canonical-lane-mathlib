import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsNumericalAnalysisCanonicalLaneLean.LyapunovExponentAnalysis

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure ShadowingPackage {L : LyapunovExponentPackage} where
  pseudoOrbit : Prop
  trueOrbitExists : Prop
  shadowingDistance : Prop
  hyperbolicityCondition : Prop

structure ShadowingEvidence {L : LyapunovExponentPackage} (S : ShadowingPackage L) where
  pseudoOrbitClosed : S.pseudoOrbit
  trueOrbitExistsClosed : S.trueOrbitExists
  shadowingDistanceClosed : S.shadowingDistance
  hyperbolicityConditionClosed : S.hyperbolicityCondition

def ShadowingClosed {L : LyapunovExponentPackage} (S : ShadowingPackage L) : Prop :=
  S.pseudoOrbit ∧ S.trueOrbitExists ∧ S.shadowingDistance ∧ S.hyperbolicityCondition

theorem shadowing_closed_from_evidence {L : LyapunovExponentPackage}
    (S : ShadowingPackage L) (E : ShadowingEvidence S) : ShadowingClosed S := by
  exact And.intro E.pseudoOrbitClosed
    (And.intro E.trueOrbitExistsClosed
      (And.intro E.shadowingDistanceClosed E.hyperbolicityConditionClosed))

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse