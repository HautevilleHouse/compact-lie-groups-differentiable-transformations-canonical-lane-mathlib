import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure CompactLieGroupStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  groupMul : manifold → manifold → manifold
  groupInv : manifold → manifold
  identity : manifold
  compact : Prop
  smoothMultiplication : Prop
  smoothInversion : Prop
  analyticGroup : Prop

structure CompactLieGroupEvidence (G : CompactLieGroupStructure) where
  compactClosed : G.compact
  smoothMultiplicationClosed : G.smoothMultiplication
  smoothInversionClosed : G.smoothInversion
  analyticGroupClosed : G.analyticGroup

def CompactLieGroupClosed (G : CompactLieGroupStructure) : Prop :=
  G.compact ∧ G.smoothMultiplication ∧ G.smoothInversion ∧ G.analyticGroup

theorem compact_lie_group_closed_from_evidence (G : CompactLieGroupStructure)
    (E : CompactLieGroupEvidence G) : CompactLieGroupClosed G := by
  exact And.intro E.compactClosed
    (And.intro E.smoothMultiplicationClosed
      (And.intro E.smoothInversionClosed E.analyticGroupClosed))

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse