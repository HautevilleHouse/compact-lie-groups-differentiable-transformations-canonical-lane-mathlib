import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure WeylGroup (𝔤 : Type u) [LieAlgebra 𝔤] (R : RootSystem 𝔤) where
  group : Type u
  groupStructure : Group group
  actionOnRoots : group → RootSystem.Root 𝔤 → RootSystem.Root 𝔤
  preservesRootSystem : Prop
  actsFaithfully : Prop
  preservesRootSystemTerm : preservesRootSystem
  actsFaithfullyTerm : actsFaithfully

structure WeylGroupEvidence (𝔤 : Type u) [LieAlgebra 𝔤] (R : RootSystem 𝔤)
    (W : WeylGroup 𝔤 R) where
  preservesRootSystemClosed : W.preservesRootSystem
  actsFaithfullyClosed : W.actsFaithfully

def WeylGroupClosed (𝔤 : Type u) [LieAlgebra 𝔤] (R : RootSystem 𝔤)
    (W : WeylGroup 𝔤 R) : Prop :=
  W.preservesRootSystem ∧ W.actsFaithfully

theorem weyl_group_closed_from_evidence (𝔤 : Type u) [LieAlgebra 𝔤] (R : RootSystem 𝔤)
    (W : WeylGroup 𝔤 R) (E : WeylGroupEvidence 𝔤 R W) : WeylGroupClosed 𝔤 R W := by
  exact And.intro E.preservesRootSystemClosed E.actsFaithfullyClosed

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse