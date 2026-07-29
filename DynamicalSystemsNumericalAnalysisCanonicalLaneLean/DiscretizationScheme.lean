import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure DiscretizationScheme where
  timeStep : ℚ
  method : String
  orderAccuracy : ℕ
  stabilityCondition : Prop

structure DiscretizationEvidence (D : DiscretizationScheme) where
  timeStepPositive : D.timeStep > 0
  methodNonempty : D.method ≠ ""
  stabilityConditionClosed : D.stabilityCondition

def DiscretizationClosed (D : DiscretizationScheme) : Prop :=
  D.timeStep > 0 ∧ D.method ≠ "" ∧ D.stabilityCondition

theorem discretization_closed_from_evidence (D : DiscretizationScheme) (E : DiscretizationEvidence D) : DiscretizationClosed D := by
  exact And.intro E.timeStepPositive (And.intro E.methodNonempty E.stabilityConditionClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse