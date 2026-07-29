import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DiscretizationScheme

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure StabilityAnalysis (D : DiscretizationScheme) where
  linearStability : Prop
  nonlinearStability : Prop
  lyapunovFunction : Type

def StabilityClosed {D : DiscretizationScheme} (S : StabilityAnalysis D) : Prop :=
  S.linearStability ∧ S.nonlinearStability

theorem stability_closed_from_evidence {D : DiscretizationScheme} (S : StabilityAnalysis D) (h : S.linearStability) (h' : S.nonlinearStability) : StabilityClosed S := by
  exact And.intro h h'

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse