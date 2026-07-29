import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.LieGroupAdmittedObject

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure DifferentiableTransformationPackage where
  source : CompactLieGroupAdmittedObject
  target : CompactLieGroupAdmittedObject
  map : source.carrier → target.carrier
  smooth : Smooth map
  lieGroupHomomorphism : Prop
  structurePreservation : Prop

def DifferentiableTransformationClosed (pkg : DifferentiableTransformationPackage) : Prop :=
  pkg.lieGroupHomomorphism ∧ pkg.structurePreservation

theorem differentiable_transformation_closed (pkg : DifferentiableTransformationPackage) (h : DifferentiableTransformationClosed pkg) : DifferentiableTransformationClosed pkg := h

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse