import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure PerformanceTestingPackage where
  wearResistance : Prop
  corrosionResistance : Prop
  thermalCyclingStability : Prop
  hardnessMeasurement : Float
  
structure PerformanceTestingEvidence (P : PerformanceTestingPackage) where
  wearResistanceClosed : P.wearResistance
  corrosionResistanceClosed : P.corrosionResistance
  thermalCyclingStabilityClosed : P.thermalCyclingStability
  hardnessMeasurementClosed : P.hardnessMeasurement > 0

def PerformanceTestingClosed (P : PerformanceTestingPackage) : Prop :=
  P.wearResistance ∧ P.corrosionResistance ∧ P.thermalCyclingStability ∧ (P.hardnessMeasurement > 0)

theorem performance_testing_closed_from_evidence (P : PerformanceTestingPackage) (E : PerformanceTestingEvidence P) : PerformanceTestingClosed P := by
  exact And.intro E.wearResistanceClosed (And.intro E.corrosionResistanceClosed (And.intro E.thermalCyclingStabilityClosed E.hardnessMeasurementClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse