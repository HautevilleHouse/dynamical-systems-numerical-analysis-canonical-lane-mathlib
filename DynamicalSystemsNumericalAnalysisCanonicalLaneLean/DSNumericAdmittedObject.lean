import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsNumericalAnalysisCanonicalLaneLean

structure DSNumericSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DSNumericAdmittedObject where
  space : DSNumericSpace
  dynamicalSystemContinuous : Prop
  numericalMethodStable : Prop
  attractorCompact : Prop
  invariantSet : Set (space.carrier)
  conclusion : attractorCompact ∧ invariantSet.Nonempty

structure DSNumericEndgameState where
  object : DSNumericAdmittedObject

def DSNumericWitnessClosed (O : DSNumericAdmittedObject) : Prop :=
  O.attractorCompact ∧ O.invariantSet.Nonempty

end DynamicalSystemsNumericalAnalysisCanonicalLaneLean
end HautevilleHouse
