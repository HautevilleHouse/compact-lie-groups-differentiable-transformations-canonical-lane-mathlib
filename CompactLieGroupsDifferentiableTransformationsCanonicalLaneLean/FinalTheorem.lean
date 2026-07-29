import CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

def ConstrainedLieGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lie_groups_endgame (A : AdmissibleClass) :
    ConstrainedLieGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse
