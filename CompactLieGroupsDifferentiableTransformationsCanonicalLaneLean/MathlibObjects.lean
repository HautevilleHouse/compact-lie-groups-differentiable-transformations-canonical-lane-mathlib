import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompactLieSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  groupStructure : Group carrier
  lieStructure : Prop

structure CompactLieAdmittedObject where
  space : CompactLieSpace
  compactLieGroup : Prop
  differentiableRepresentation : Prop
  invariantForm : Prop
  conclusion : compactLieGroup ∧ differentiableRepresentation ∧ invariantForm

structure CompactLieEndgameState where
  object : CompactLieAdmittedObject

def CompactLieWitnessClosed (O : CompactLieAdmittedObject) : Prop :=
  O.conclusion

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse