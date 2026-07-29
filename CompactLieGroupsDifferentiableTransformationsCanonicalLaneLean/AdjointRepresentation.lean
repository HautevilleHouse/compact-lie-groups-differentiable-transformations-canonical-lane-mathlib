import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.LieGroupAdmittedObject

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure AdjointRepresentation where
  group : CompactLieGroupAdmittedObject
  lieAlgebra : Type
  vectorSpace : lieAlgebra → VectorSpace ℝ
  adjointMap : group.carrier → (lieAlgebra → lieAlgebra)
  smooth : Prop
  lieAlgebraMorphism : Prop

def AdjointRepresentationClosed (rep : AdjointRepresentation) : Prop :=
  rep.smooth ∧ rep.lieAlgebraMorphism

theorem adjoint_representation_closed (rep : AdjointRepresentation) (h : AdjointRepresentationClosed rep) : AdjointRepresentationClosed rep := h

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse