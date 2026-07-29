import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure CompactLieGroup (G : Type u) where
  lieGroup : LieGroup G ℝ
  compactTopology : CompactSpace G
  smoothStructure : SmoothManifold G ℝ

structure CompactLieGroupEvidence (G : Type u) (L : CompactLieGroup G) where
  lieGroupClosed : L.lieGroup
  compactTopologyClosed : L.compactTopology
  smoothStructureClosed : L.smoothStructure

def CompactLieGroupClosed (G : Type u) (L : CompactLieGroup G) : Prop :=
  L.lieGroup ∧ L.compactTopology ∧ L.smoothStructure

theorem compact_lie_group_closed_from_evidence (G : Type u) (L : CompactLieGroup G)
    (E : CompactLieGroupEvidence G L) : CompactLieGroupClosed G L := by
  exact And.intro E.lieGroupClosed (And.intro E.compactTopologyClosed E.smoothStructureClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse