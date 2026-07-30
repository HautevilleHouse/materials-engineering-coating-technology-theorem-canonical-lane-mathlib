import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure ThermalBarrierCoatingPackage where
  ceramicTopCoat : Type u
  bondCoat : Type v
  substrate : Type w
  thermalConductivity : Type x
  thermalExpansion : Type y
  thicknessProfile : Type z
  thermalInsulation : Prop
  cyclicOxidationResistance : Prop
  thermalCyclingLife : Prop

structure ThermalBarrierCoatingEvidence (T : ThermalBarrierCoatingPackage) where
  thermalInsulationClosed : T.thermalInsulation
  cyclicOxidationResistanceClosed : T.cyclicOxidationResistance
  thermalCyclingLifeClosed : T.thermalCyclingLife

def ThermalBarrierCoatingClosed (T : ThermalBarrierCoatingPackage) : Prop :=
  T.thermalInsulation ∧ T.cyclicOxidationResistance ∧ T.thermalCyclingLife

theorem thermal_barrier_coating_closed_from_evidence
    (T : ThermalBarrierCoatingPackage) (E : ThermalBarrierCoatingEvidence T) :
    ThermalBarrierCoatingClosed T := by
  exact And.intro E.thermalInsulationClosed
    (And.intro E.cyclicOxidationResistanceClosed E.thermalCyclingLifeClosed)

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse