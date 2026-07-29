import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure DiscretizationMethod where
  name : String
  order : Nat
  stability : Prop
  consistency : Prop
  convergence : stability ∧ consistency → Prop

structure DiscretizationEvidence (M : DiscretizationMethod) where
  stabilityClosed : M.stability
  consistencyClosed : M.consistency
  convergenceClosed : M.convergence (And.intro stabilityClosed consistencyClosed)

def DiscretizationClosed (M : DiscretizationMethod) : Prop :=
  M.stability ∧ M.consistency ∧ (M.stability ∧ M.consistency → M.convergence)

theorem discretization_closed_from_evidence (M : DiscretizationMethod) (E : DiscretizationEvidence M) :
    DiscretizationClosed M := by
  exact And.intro E.stabilityClosed (And.intro E.consistencyClosed E.convergenceClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse