import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure NumericalSurgeryPackage where
  discreteTimeSteps : Prop
  admissibleCutRegion : Prop
  postSurgeryStateControlled : Prop
  monotonicityPreserved : Prop
  topologicalChangeAccounted : Prop

structure NumericalSurgeryEvidence (U : NumericalSurgeryPackage) where
  discreteTimeStepsClosed : U.discreteTimeSteps
  admissibleCutRegionClosed : U.admissibleCutRegion
  postSurgeryStateControlledClosed : U.postSurgeryStateControlled
  monotonicityPreservedClosed : U.monotonicityPreserved
  topologicalChangeAccountedClosed : U.topologicalChangeAccounted

def NumericalSurgeryClosed (U : NumericalSurgeryPackage) : Prop :=
  U.discreteTimeSteps ∧ U.admissibleCutRegion ∧
  U.postSurgeryStateControlled ∧ U.monotonicityPreserved ∧
  U.topologicalChangeAccounted

theorem numerical_surgery_closed_from_evidence (U : NumericalSurgeryPackage)
    (E : NumericalSurgeryEvidence U) : NumericalSurgeryClosed U := by
  exact And.intro E.discreteTimeStepsClosed
    (And.intro E.admissibleCutRegionClosed
      (And.intro E.postSurgeryStateControlledClosed
        (And.intro E.monotonicityPreservedClosed E.topologicalChangeAccountedClosed)))

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse