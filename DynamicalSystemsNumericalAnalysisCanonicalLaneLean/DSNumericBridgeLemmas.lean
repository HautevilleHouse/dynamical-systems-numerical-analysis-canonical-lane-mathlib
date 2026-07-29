import DynamicalSystemsNumericalAnalysisCanonicalLaneLean.DSNumericAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DSNumericWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse
