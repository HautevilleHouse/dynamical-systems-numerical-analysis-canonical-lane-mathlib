import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DiscretizationScheme

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure PoincareMapNumerics (D : DiscretizationScheme) where
  sectionChoice : String
  crossingDetection : Prop
  mapComputed : Prop
  accuracyGuaranteed : Prop

def PoincareMapClosed {D : DiscretizationScheme} (P : PoincareMapNumerics D) : Prop :=
  P.crossingDetection ∧ P.mapComputed ∧ P.accuracyGuaranteed

theorem poincare_map_closed_from_evidence {D : DiscretizationScheme} (P : PoincareMapNumerics D) (hC : P.crossingDetection) (hM : P.mapComputed) (hA : P.accuracyGuaranteed) : PoincareMapClosed P := by
  exact And.intro hC (And.intro hM hA)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse