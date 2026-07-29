import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure LieAlgebraRepresentationPackage (G : CompactLieGroupStructure) where
  lieAlgebra : Type u
  lieBracket : lieAlgebra → lieAlgebra → lieAlgebra
  representationMap : lieAlgebra → (G.manifold → G.manifold)
  bracketSatisfied : Prop
  representationCompatible : Prop
  adAction : Prop

structure LieAlgebraRepresentationEvidence {G : CompactLieGroupStructure}
    (R : LieAlgebraRepresentationPackage G) where
  bracketSatisfiedClosed : R.bracketSatisfied
  representationCompatibleClosed : R.representationCompatible
  adActionClosed : R.adAction

def LieAlgebraRepresentationClosed {G : CompactLieGroupStructure}
    (R : LieAlgebraRepresentationPackage G) : Prop :=
  R.bracketSatisfied ∧ R.representationCompatible ∧ R.adAction

theorem lie_algebra_representation_closed_from_evidence
    {G : CompactLieGroupStructure} (R : LieAlgebraRepresentationPackage G)
    (E : LieAlgebraRepresentationEvidence R) : LieAlgebraRepresentationClosed R := by
  exact And.intro E.bracketSatisfiedClosed
    (And.intro E.representationCompatibleClosed E.adActionClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse