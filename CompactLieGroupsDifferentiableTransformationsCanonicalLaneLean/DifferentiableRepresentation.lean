import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure DifferentiableRepresentationPackage (G : CompactLieGroupStructure) where
  targetVectorSpace : Type u
  targetTopology : TopologicalSpace targetVectorSpace
  action : G.manifold → targetVectorSpace → targetVectorSpace
  smoothAction : Prop
  linearAction : Prop
  finiteDimensional : Prop

structure DifferentiableRepresentationEvidence {G : CompactLieGroupStructure}
    (D : DifferentiableRepresentationPackage G) where
  smoothActionClosed : D.smoothAction
  linearActionClosed : D.linearAction
  finiteDimensionalClosed : D.finiteDimensional

def DifferentiableRepresentationClosed {G : CompactLieGroupStructure}
    (D : DifferentiableRepresentationPackage G) : Prop :=
  D.smoothAction ∧ D.linearAction ∧ D.finiteDimensional

theorem differentiable_representation_closed_from_evidence
    {G : CompactLieGroupStructure} (D : DifferentiableRepresentationPackage G)
    (E : DifferentiableRepresentationEvidence D) : DifferentiableRepresentationClosed D := by
  exact And.intro E.smoothActionClosed
    (And.intro E.linearActionClosed E.finiteDimensionalClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse