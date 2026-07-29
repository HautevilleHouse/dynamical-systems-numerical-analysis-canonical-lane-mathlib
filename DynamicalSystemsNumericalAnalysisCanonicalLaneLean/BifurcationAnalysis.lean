import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsNumericalAnalysisCanonicalLaneLean.ShadowingLemma

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure BifurcationPackage {L : LyapunovExponentPackage} {S : ShadowingPackage L} where
  parameterFamily : Type u
  criticalTransition : Prop
  stabilityChange : Prop
  bifurcationDiagram : Prop

structure BifurcationEvidence {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    (B : BifurcationPackage L S) where
  criticalTransitionClosed : B.criticalTransition
  stabilityChangeClosed : B.stabilityChange
  bifurcationDiagramClosed : B.bifurcationDiagram

def BifurcationClosed {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    (B : BifurcationPackage L S) : Prop :=
  B.criticalTransition ∧ B.stabilityChange ∧ B.bifurcationDiagram

theorem bifurcation_closed_from_evidence {L : LyapunovExponentPackage} {S : ShadowingPackage L}
    (B : BifurcationPackage L S) (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.criticalTransitionClosed
    (And.intro E.stabilityChangeClosed E.bifurcationDiagramClosed)

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse