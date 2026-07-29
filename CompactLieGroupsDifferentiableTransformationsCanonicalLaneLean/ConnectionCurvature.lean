import HautevilleHouse.CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.LieAlgebraStructure

/-!
# Connections and Curvature on Compact Lie Groups
-/

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure ConnectionCurvaturePackage (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) where
  connection : Type u
  curvature : Type v
  connectionSmooth : Prop
  curvatureTransformation : Prop
  bianchiIdentity : Prop

structure ConnectionCurvatureEvidence (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) (C : ConnectionCurvaturePackage G L) where
  connectionSmoothClosed : C.connectionSmooth
  curvatureTransformationClosed : C.curvatureTransformation
  bianchiIdentityClosed : C.bianchiIdentity

def ConnectionCurvatureClosed (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) (C : ConnectionCurvaturePackage G L) : Prop :=
  C.connectionSmooth ∧ C.curvatureTransformation ∧ C.bianchiIdentity

theorem connection_curvature_closed_from_evidence (G : CompactLieSpace) (L : LieAlgebraStructurePackage G) (C : ConnectionCurvaturePackage G L) (E : ConnectionCurvatureEvidence G L C) :
    ConnectionCurvatureClosed G L C := by
  exact And.intro E.connectionSmoothClosed (And.intro E.curvatureTransformationClosed E.bianchiIdentityClosed)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse