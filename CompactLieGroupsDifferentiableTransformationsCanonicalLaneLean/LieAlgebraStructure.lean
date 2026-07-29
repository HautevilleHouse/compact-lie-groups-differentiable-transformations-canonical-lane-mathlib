import HautevilleHouse.CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.MathlibObjects

/-!
# Lie Algebra Structure of Compact Lie Groups
-/

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure LieAlgebraStructurePackage (G : CompactLieSpace) where
  lieAlgebra : Type u
  bracket : lieAlgebra → lieAlgebra → lieAlgebra
  jacobiIdentity : Prop
  compactForm : Prop
  killingForm : Prop

structure LieAlgebraStructureEvidence (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) where
  jacobiIdentityClosed : L.jacobiIdentity
  compactFormClosed : L.compactForm
  killingFormClosed : L.killingForm

def LieAlgebraStructureClosed (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) : Prop :=
  L.jacobiIdentity ∧ L.compactForm ∧ L.killingForm

theorem lie_algebra_structure_closed_from_evidence (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) (E : LieAlgebraStructureEvidence G L) :
    LieAlgebraStructureClosed G L := by
  exact And.intro E.jacobiIdentityClosed (And.intro E.compactFormClosed E.killingFormClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse