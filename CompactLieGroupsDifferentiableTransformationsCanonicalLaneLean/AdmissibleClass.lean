import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure AdmissibleClass where
  object : CompactLieGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompactLieGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse