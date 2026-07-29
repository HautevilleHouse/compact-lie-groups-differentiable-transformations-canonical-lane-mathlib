import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure CompactLieGroupObject where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  smoothStructure : Prop
  groupStructure : Prop
  compact : Prop
  lieGroupActions : Prop
  conclusion : smoothStructure ∧ groupStructure ∧ compact ∧ lieGroupActions

structure AdmissibleClass where
  object : CompactLieGroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse
