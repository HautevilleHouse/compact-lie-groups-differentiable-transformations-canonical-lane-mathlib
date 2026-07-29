import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure MaximalTorusPackage (G : CompactLieGroupStructure) where
  torusSubgroup : Type u
  torusTopology : TopologicalSpace torusSubgroup
  embedding : torusSubgroup → G.manifold
  maximal : Prop
  abelian : Prop
  compactConnected : Prop
  closedUnderGroupOps : Prop

structure MaximalTorusEvidence {G : CompactLieGroupStructure}
    (T : MaximalTorusPackage G) where
  maximalClosed : T.maximal
  abelianClosed : T.abelian
  compactConnectedClosed : T.compactConnected
  closedUnderGroupOpsClosed : T.closedUnderGroupOps

def MaximalTorusClosed {G : CompactLieGroupStructure}
    (T : MaximalTorusPackage G) : Prop :=
  T.maximal ∧ T.abelian ∧ T.compactConnected ∧ T.closedUnderGroupOps

theorem maximal_torus_closed_from_evidence {G : CompactLieGroupStructure}
    (T : MaximalTorusPackage G) (E : MaximalTorusEvidence T) : MaximalTorusClosed T := by
  exact And.intro E.maximalClosed
    (And.intro E.abelianClosed
      (And.intro E.compactConnectedClosed E.closedUnderGroupOpsClosed))

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse