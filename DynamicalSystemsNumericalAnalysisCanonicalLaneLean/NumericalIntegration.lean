import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsNumericalAnalysisCanonicalLaneLean.BifurcationAnalysis

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure NumericalIntegrationPackage {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} where
  integratorScheme : Type u
  stepSize : Prop
  errorEstimate : Prop
  convergenceOrder : Prop
  stabilityCondition : Prop

structure NumericalIntegrationEvidence {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} (N : NumericalIntegrationPackage L S B) where
  stepSizeClosed : N.stepSize
  errorEstimateClosed : N.errorEstimate
  convergenceOrderClosed : N.convergenceOrder
  stabilityConditionClosed : N.stabilityCondition

def NumericalIntegrationClosed {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} (N : NumericalIntegrationPackage L S B) : Prop :=
  N.stepSize ∧ N.errorEstimate ∧ N.convergenceOrder ∧ N.stabilityCondition

theorem numerical_integration_closed_from_evidence
    {L : LyapunovExponentPackage} {S : ShadowingPackage L} {B : BifurcationPackage L S}
    (N : NumericalIntegrationPackage L S B) (E : NumericalIntegrationEvidence N) :
    NumericalIntegrationClosed N := by
  exact And.intro E.stepSizeClosed
    (And.intro E.errorEstimateClosed
      (And.intro E.convergenceOrderClosed E.stabilityConditionClosed))

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse