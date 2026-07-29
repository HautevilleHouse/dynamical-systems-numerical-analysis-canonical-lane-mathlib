import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure SymplecticIntegratorPackage where
  order : Nat
  hamiltonianSystem : Prop
  symplecticityPreserved : Prop
  energyError : Prop
  longTimeStability : Prop

structure SymplecticIntegratorEvidence (P : SymplecticIntegratorPackage) where
  symplecticityPreservedClosed : P.symplecticityPreserved
  energyErrorClosed : P.energyError
  longTimeStabilityClosed : P.longTimeStability

def SymplecticIntegratorClosed (P : SymplecticIntegratorPackage) : Prop :=
  P.symplecticityPreserved ∧ P.energyError ∧ P.longTimeStability

theorem symplectic_integrator_closed_from_evidence (P : SymplecticIntegratorPackage)
    (E : SymplecticIntegratorEvidence P) : SymplecticIntegratorClosed P := by
  exact And.intro E.symplecticityPreservedClosed (And.intro E.energyErrorClosed E.longTimeStabilityClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse