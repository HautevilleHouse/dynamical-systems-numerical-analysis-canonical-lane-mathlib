import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure AttractorRecoveryPackage where
  attractorSet : Set ℝᵐ
  lyapunovFunction : ℝᵐ → ℝ
  numericalConvergence : Prop
  basinOfAttractionApproximated : Prop

structure AttractorRecoveryEvidence (P : AttractorRecoveryPackage) where
  numericalConvergenceClosed : P.numericalConvergence
  basinOfAttractionApproximatedClosed : P.basinOfAttractionApproximated

def AttractorRecoveryClosed (P : AttractorRecoveryPackage) : Prop :=
  P.numericalConvergence ∧ P.basinOfAttractionApproximated

theorem attractor_recovery_closed_from_evidence (P : AttractorRecoveryPackage)
    (E : AttractorRecoveryEvidence P) : AttractorRecoveryClosed P := by
  exact And.intro E.numericalConvergenceClosed E.basinOfAttractionApproximatedClosed

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse