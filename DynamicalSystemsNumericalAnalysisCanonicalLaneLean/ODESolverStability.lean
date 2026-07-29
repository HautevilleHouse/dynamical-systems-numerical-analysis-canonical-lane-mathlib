import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure ODESolverStabilityPackage where
  method : String
  stabilityCondition : Prop
  errorBound : Prop
  convergenceOrder : Nat
  stiffProblemCapable : Bool

structure ODESolverStabilityEvidence (P : ODESolverStabilityPackage) where
  stabilityConditionClosed : P.stabilityCondition
  errorBoundClosed : P.errorBound

def ODESolverStabilityClosed (P : ODESolverStabilityPackage) : Prop :=
  P.stabilityCondition ∧ P.errorBound

theorem ode_solver_stability_closed_from_evidence (P : ODESolverStabilityPackage)
    (E : ODESolverStabilityEvidence P) : ODESolverStabilityClosed P := by
  exact And.intro E.stabilityConditionClosed E.errorBoundClosed

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse