import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DSNumericAdmittedObject
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure LyapunovExponentAnalysis (O : DSNumericAdmittedObject) where
  orbit : ℕ → O.space.carrier
  jacobianAlongOrbit : ℕ → Matrix (Fin (O.space.carrier.dim)) (Fin (O.space.carrier.dim)) ℝ
  lyapunovExponentValue : ℝ
  ergodicTheoremApplied : Prop
  computationVerified : Prop

end HautevilleHouse
end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
