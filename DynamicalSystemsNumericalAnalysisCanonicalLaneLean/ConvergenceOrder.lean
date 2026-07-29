import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DiscretizationScheme

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure ConvergenceOrder (D : DiscretizationScheme) where
  globalErrorBound : Prop
  order : ℕ
  asymptoticConstant : ℚ

def ConvergenceClosed {D : DiscretizationScheme} (C : ConvergenceOrder D) : Prop :=
  C.globalErrorBound ∧ C.order = D.orderAccuracy

theorem convergence_closed_from_evidence {D : DiscretizationScheme} (C : ConvergenceOrder D) (h : C.globalErrorBound) (hOrder : C.order = D.orderAccuracy) : ConvergenceClosed C := by
  exact And.intro h hOrder

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse