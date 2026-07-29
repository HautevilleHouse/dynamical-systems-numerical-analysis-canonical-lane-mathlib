import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure DynamicsAdmittedObject where
  system : Type
  disretization : Type
  convergenceGuarantee : Prop
  conclusion : convergenceGuarantee

structure DynamicsAdmissibleClass where
  object : DynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def dynamicsBridgeClosed (A : DynamicsAdmissibleClass) : Prop :=
  A.object.convergenceGuarantee

theorem dynamics_bridge_from_admissible_class (A : DynamicsAdmissibleClass) :
    dynamicsBridgeClosed A := by
  exact A.object.conclusion

def dynamicsGateClosed (A : DynamicsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem dynamics_gate_from_admissible_class (A : DynamicsAdmissibleClass) :
    dynamicsGateClosed A := by
  exact A.gateWitness

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse