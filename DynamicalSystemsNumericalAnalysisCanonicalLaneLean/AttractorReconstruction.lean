import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsNumericalAnalysisCanonicalLaneLean.NumericalIntegration

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure AttractorReconstructionPackage {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} {N : NumericalIntegrationPackage L S B} where
  embeddingDimension : Prop
  timeDelay : Prop
  attractorRecovered : Prop
  topologicalEquivalence : Prop

structure AttractorReconstructionEvidence {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} {N : NumericalIntegrationPackage L S B}
    (A : AttractorReconstructionPackage L S B N) where
  embeddingDimensionClosed : A.embeddingDimension
  timeDelayClosed : A.timeDelay
  attractorRecoveredClosed : A.attractorRecovered
  topologicalEquivalenceClosed : A.topologicalEquivalence

def AttractorReconstructionClosed {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    {B : BifurcationPackage L S} {N : NumericalIntegrationPackage L S B}
    (A : AttractorReconstructionPackage L S B N) : Prop :=
  A.embeddingDimension ∧ A.timeDelay ∧ A.attractorRecovered ∧ A.topologicalEquivalence

theorem attractor_reconstruction_closed_from_evidence
    {L : LyapunovExponentPackage} {S : ShadowingPackage L} {B : BifurcationPackage L S}
    {N : NumericalIntegrationPackage L S B} (A : AttractorReconstructionPackage L S B N)
    (E : AttractorReconstructionEvidence A) : AttractorReconstructionClosed A := by
  exact And.intro E.embeddingDimensionClosed
    (And.intro E.timeDelayClosed
      (And.intro E.attractorRecoveredClosed E.topologicalEquivalenceClosed))

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse