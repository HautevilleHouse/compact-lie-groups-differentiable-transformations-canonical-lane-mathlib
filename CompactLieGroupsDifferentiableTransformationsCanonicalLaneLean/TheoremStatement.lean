import canonicalLaneMathlib.AdmissibleClass
import CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure CompactLieAdmittedObject where
  lieGroup : Type u
  differentiableStructure : Type v
  compactness : Prop
  connected : Prop
  simplyConnected : Prop
  representationTheoryComplete : Prop
  conclusion : representationTheoryComplete

def CompactLieWitnessClosed (O : CompactLieAdmittedObject) : Prop :=
  O.representationTheoryComplete

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse