import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DynamicsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

def ConstrainedDynamicsClosure (A : DynamicsAdmissibleClass) : Prop :=
  dynamicsBridgeClosed A ∧ dynamicsGateClosed A

theorem constrained_dynamics_endgame (A : DynamicsAdmissibleClass) :
    ConstrainedDynamicsClosure A := by
  exact And.intro (dynamics_bridge_from_admissible_class A) (dynamics_gate_from_admissible_class A)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse