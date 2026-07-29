import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure RootSystemPackage (G : CompactLieGroupStructure) (T : MaximalTorusPackage G) where
  rootSpaceDecomposition : Prop
  rootSet : Type u
  rootLattice : Type v
  weylGroupAction : Prop
  integrabilityConditions : Prop
  classificationByDynkinDiagram : Prop

structure RootSystemEvidence {G : CompactLieGroupStructure}
    {T : MaximalTorusPackage G} (R : RootSystemPackage G T) where
  rootSpaceDecompositionClosed : R.rootSpaceDecomposition
  weylGroupActionClosed : R.weylGroupAction
  integrabilityConditionsClosed : R.integrabilityConditions
  classificationByDynkinDiagramClosed : R.classificationByDynkinDiagram

def RootSystemClosed {G : CompactLieGroupStructure} {T : MaximalTorusPackage G}
    (R : RootSystemPackage G T) : Prop :=
  R.rootSpaceDecomposition ∧ R.weylGroupAction ∧
  R.integrabilityConditions ∧ R.classificationByDynkinDiagram

theorem root_system_closed_from_evidence {G : CompactLieGroupStructure}
    {T : MaximalTorusPackage G} (R : RootSystemPackage G T)
    (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.rootSpaceDecompositionClosed
    (And.intro E.weylGroupActionClosed
      (And.intro E.integrabilityConditionsClosed E.classificationByDynkinDiagramClosed))

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse