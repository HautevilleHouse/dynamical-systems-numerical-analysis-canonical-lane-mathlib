import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsNumericalAnalysisCanonicalLaneLean.AttractorReconstruction

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

def ConstrainedDynamicalSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_systems_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse