import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure ThermalBarrierPackage where
  thermalConductivity : Type u
  thermalExpansionMismatch : Type v
  operatingTemperatureRange : String
  thermalCyclingResistance : Prop
  oxidationResistance : Prop
  bondingLayerCompatibility : Prop

structure ThermalBarrierEvidence (T : ThermalBarrierPackage) where
  thermalCyclingResistanceClosed : T.thermalCyclingResistance
  oxidationResistanceClosed : T.oxidationResistance
  bondingLayerCompatibilityClosed : T.bondingLayerCompatibility

def ThermalBarrierClosed (T : ThermalBarrierPackage) : Prop :=
  T.thermalCyclingResistance ∧ T.oxidationResistance ∧ T.bondingLayerCompatibility

theorem thermal_barrier_closed_from_evidence (T : ThermalBarrierPackage) (E : ThermalBarrierEvidence T) : ThermalBarrierClosed T := by
  exact And.intro E.thermalCyclingResistanceClosed (And.intro E.oxidationResistanceClosed E.bondingLayerCompatibilityClosed)

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse