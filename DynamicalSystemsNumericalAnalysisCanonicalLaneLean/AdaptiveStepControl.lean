import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DiscretizationScheme

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure AdaptiveStepControl where
  errorEstimator : Prop
  stepSizeAdjustment : Prop
  toleranceSatisfied : Prop

def AdaptiveControlClosed (A : AdaptiveStepControl) : Prop :=
  A.errorEstimator ∧ A.stepSizeAdjustment ∧ A.toleranceSatisfied

theorem adaptive_control_closed_from_evidence (A : AdaptiveStepControl) (hE : A.errorEstimator) (hS : A.stepSizeAdjustment) (hT : A.toleranceSatisfied) : AdaptiveControlClosed A := by
  exact And.intro hE (And.intro hS hT)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse