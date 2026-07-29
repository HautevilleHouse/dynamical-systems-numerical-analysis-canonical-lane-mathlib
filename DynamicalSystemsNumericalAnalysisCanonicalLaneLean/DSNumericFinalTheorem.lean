import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DSNumericGateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

def ConstrainedDSNumericClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ds_numeric_endgame (A : AdmissibleClass) :
    ConstrainedDSNumericClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse
