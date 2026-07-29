import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure DiscreteTimeAnalyticPackage where
  updateRule : ℕ → ℝᵐ → ℝᵐ
  convergenceMetric : Prop
  fixedPointIteration : Prop
  spectralRadiusBound : Prop

structure DiscreteTimeAnalyticEvidence (P : DiscreteTimeAnalyticPackage) where
  convergenceMetricClosed : P.convergenceMetric
  fixedPointIterationClosed : P.fixedPointIteration
  spectralRadiusBoundClosed : P.spectralRadiusBound

def DiscreteTimeAnalyticClosed (P : DiscreteTimeAnalyticPackage) : Prop :=
  P.convergenceMetric ∧ P.fixedPointIteration ∧ P.spectralRadiusBound

theorem discrete_time_analytic_closed_from_evidence (P : DiscreteTimeAnalyticPackage)
    (E : DiscreteTimeAnalyticEvidence P) : DiscreteTimeAnalyticClosed P := by
  exact And.intro E.convergenceMetricClosed (And.intro E.fixedPointIterationClosed E.spectralRadiusBoundClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse