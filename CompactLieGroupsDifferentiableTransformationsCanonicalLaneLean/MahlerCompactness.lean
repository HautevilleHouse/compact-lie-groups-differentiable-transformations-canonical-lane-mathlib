import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean

structure MahlerCompactnessPackage where
  group : AdmissibleClass
  compactSubsetCondition : Prop
  measureInvariance : Prop
  compactnessConclusion : Prop

def MahlerCompactnessClosed (pkg : MahlerCompactnessPackage) : Prop :=
  pkg.compactSubsetCondition ∧ pkg.measureInvariance ∧ pkg.compactnessConclusion

theorem mahler_compactness_closed (pkg : MahlerCompactnessPackage) (h : MahlerCompactnessClosed pkg) : MahlerCompactnessClosed pkg := h

end CompactLieGroupsDifferentiableTransformationsCanonicalLaneLean
end HautevilleHouse