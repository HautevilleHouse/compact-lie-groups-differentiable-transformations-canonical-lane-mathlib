import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure ClassificationData (G : Type u) (L : CompactLieGroup G) where
  simpleComponents : List (Type u)
  eachSimpleCompact : Prop
  torusRank : ℕ
  weylGroup : WeylGroup (LieAlgebra G) (rootSystem G L)
  classificationComplete : Prop
  classificationCompleteTerm : classificationComplete

structure ClassificationEvidence (G : Type u) (L : CompactLieGroup G) (C : ClassificationData G L) where
  eachSimpleCompactClosed : C.eachSimpleCompact
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (G : Type u) (L : CompactLieGroup G) (C : ClassificationData G L) : Prop :=
  C.eachSimpleCompact ∧ C.classificationComplete

theorem classification_closed_from_evidence (G : Type u) (L : CompactLieGroup G)
    (C : ClassificationData G L) (E : ClassificationEvidence G L C) :
    ClassificationClosed G L C := by
  exact And.intro E.eachSimpleCompactClosed E.classificationCompleteClosed

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse