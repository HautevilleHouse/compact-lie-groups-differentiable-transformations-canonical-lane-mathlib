import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure BiinvariantMetric (G : Type u) [CompactLieGroup G] where
  metric : RiemannianMetric G
  leftInvariant : ∀ g h, metric.metric g h = metric.metric (G.group.mul g) (G.group.mul h)
  rightInvariant : ∀ g h, metric.metric g h = metric.metric (G.group.mul h g) (G.group.mul h h)

structure BiinvariantMetricEvidence (G : Type u) [C : CompactLieGroup G] (M : BiinvariantMetric G) where
  leftInvariantClosed : M.leftInvariant
  rightInvariantClosed : M.rightInvariant

def BiinvariantMetricClosed (G : Type u) [C : CompactLieGroup G] (M : BiinvariantMetric G) : Prop :=
  M.leftInvariant ∧ M.rightInvariant

theorem biinvariant_metric_closed_from_evidence
    (G : Type u) [C : CompactLieGroup G] (M : BiinvariantMetric G) (E : BiinvariantMetricEvidence G M) :
    BiinvariantMetricClosed G M := by
  exact And.intro E.leftInvariantClosed E.rightInvariantClosed

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse
