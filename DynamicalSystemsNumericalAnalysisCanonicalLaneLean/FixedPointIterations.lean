import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure FixedPointIteration where
  space : Type
  metric : space → space → ℝ
  contractionFactor : ℝ
  contraction : ∀ x y, metric (f x) (f y) ≤ contractionFactor * metric x y
  f : space → space
  fixedPoint : space
  convergenceRate : ℝ

structure FixedPointEvidence (I : FixedPointIteration) where
  contractionClosed : I.contraction
  cauchySequence : ℕ → I.space
  limitFixed : tendsto (cauchySequence) atTop (𝓝 I.fixedPoint)

def FixedPointClosed (I : FixedPointIteration) : Prop :=
  I.contraction ∧ (∃ (x : ℕ → I.space), tendsto x atTop (𝓝 I.fixedPoint))

theorem fixed_point_closed_from_evidence (I : FixedPointIteration) (E : FixedPointEvidence I) :
    FixedPointClosed I := by
  exact And.intro E.contractionClosed ⟨E.cauchySequence, E.limitFixed⟩

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse