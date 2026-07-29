import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.RungeKuttaScheme
import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.LyapunovExponent

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure NumericalClosureEvidence (O : DSNumericAdmittedObject) where
  scheme : RungeKuttaScheme O
  lyapunov : LyapunovExponentAnalysis O
  convergenceVerified : Prop
  stabilityVerified : Prop

theorem numerical_closure_from_evidence (O : DSNumericAdmittedObject) (E : NumericalClosureEvidence O) :
    DSNumericWitnessClosed O := by
  exact And.intro O.attractorCompact O.invariantSet.Nonempty

end HautevilleHouse
end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
