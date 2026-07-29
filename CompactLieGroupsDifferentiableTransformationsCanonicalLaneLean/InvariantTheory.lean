import HautevilleHouse.CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.DifferentiableRepresentation

/-!
# Invariant Theory for Compact Lie Groups
-/

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure InvariantTheoryPackage (G : CompactLieSpace) (D : DifferentiableRepresentationPackage G) where
  invariantPolynomials : Type u
  hilbertSeries : Prop
  invariantSeparateOrbits : Prop
  chevalleyRestriction : Prop

structure InvariantTheoryEvidence (G : CompactLieSpace) (D : DifferentiableRepresentationPackage G) (I : InvariantTheoryPackage G D) where
  invariantPolynomialsClosed : Prop
  hilbertSeriesClosed : I.hilbertSeries
  invariantSeparateOrbitsClosed : I.invariantSeparateOrbits
  chevalleyRestrictionClosed : I.chevalleyRestriction

def InvariantTheoryClosed (G : CompactLieSpace) (D : DifferentiableRepresentationPackage G) (I : InvariantTheoryPackage G D) : Prop :=
  I.hilbertSeries ∧ I.invariantSeparateOrbits ∧ I.chevalleyRestriction

theorem invariant_theory_closed_from_evidence (G : CompactLieSpace) (D : DifferentiableRepresentationPackage G) (I : InvariantTheoryPackage G D) (E : InvariantTheoryEvidence G D I) :
    InvariantTheoryClosed G D I := by
  exact And.intro E.hilbertSeriesClosed (And.intro E.invariantSeparateOrbitsClosed E.chevalleyRestrictionClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse