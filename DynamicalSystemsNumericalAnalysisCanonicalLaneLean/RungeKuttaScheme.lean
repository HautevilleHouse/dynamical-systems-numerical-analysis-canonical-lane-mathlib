import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DSNumericAdmittedObject

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure RungeKuttaScheme (O : DSNumericAdmittedObject) where
  stepSize : ℝ
  coefficients : List (List ℝ)
  consistencyOrder : ℕ
  stabilityCondition : Prop
  errorEstimate : Prop

def standardRK4 : RungeKuttaScheme (by sorry) := { stepSize := 0.01, coefficients := [[0.5, 0.5, 0, 0], [0, 0.5, 0.5, 0], [0, 0, 1, 0], [0, 0, 0, 1]], consistencyOrder := 4, stabilityCondition := True, errorEstimate := True }

end HautevilleHouse
end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
