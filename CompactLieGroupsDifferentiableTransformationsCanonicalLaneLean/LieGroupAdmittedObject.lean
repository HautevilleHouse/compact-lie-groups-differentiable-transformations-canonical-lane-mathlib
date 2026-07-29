import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure CompactLieGroupAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : SmoothManifold carrier
  compact : CompactSpace carrier
  lieGroup : LieGroup carrier
  conclusion : lieGroup

def CompactLieGroupWitnessClosed (O : CompactLieGroupAdmittedObject) : Prop :=
  O.lieGroup

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse