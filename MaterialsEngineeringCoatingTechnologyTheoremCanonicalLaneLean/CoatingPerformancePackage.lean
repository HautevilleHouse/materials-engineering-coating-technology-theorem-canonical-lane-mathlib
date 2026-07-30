import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.ElasticityFracturePackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CoatingPerformancePackage {M : CoatingMaterialsPackage}
    {C : CoatingMaterialsEvidence M} {E : ElasticityFracturePackage C}
    {F : ElasticityFractureEvidence E} (P : PhaseDiagramPackage C) (Ph : PhaseDiagramEvidence P) where
  thermalBarrierEffectiveness : Prop
  corrosionResistance : Prop
  wearResistance : Prop
  lifecyclePrediction : Prop

structure CoatingPerformanceEvidence {M : CoatingMaterialsPackage}
    {C : CoatingMaterialsEvidence M} {E : ElasticityFracturePackage C}
    {F : ElasticityFractureEvidence E} {P : PhaseDiagramPackage C}
    {Ph : PhaseDiagramEvidence P} (Cp : CoatingPerformancePackage P Ph) where
  thermalBarrierEffectivenessClosed : Cp.thermalBarrierEffectiveness
  corrosionResistanceClosed : Cp.corrosionResistance
  wearResistanceClosed : Cp.wearResistance
  lifecyclePredictionClosed : Cp.lifecyclePrediction

def CoatingPerformanceClosed {M : CoatingMaterialsPackage}
    {C : CoatingMaterialsEvidence M} {E : ElasticityFracturePackage C}
    {F : ElasticityFractureEvidence E} {P : PhaseDiagramPackage C}
    {Ph : PhaseDiagramEvidence P} (Cp : CoatingPerformancePackage P Ph) : Prop :=
  Cp.thermalBarrierEffectiveness ∧ Cp.corrosionResistance ∧
  Cp.wearResistance ∧ Cp.lifecyclePrediction

theorem coating_performance_closed_from_evidence {M : CoatingMaterialsPackage}
    {C : CoatingMaterialsEvidence M} {E : ElasticityFracturePackage C}
    {F : ElasticityFractureEvidence E} {P : PhaseDiagramPackage C}
    {Ph : PhaseDiagramEvidence P} (Cp : CoatingPerformancePackage P Ph)
    (Ev : CoatingPerformanceEvidence Cp) : CoatingPerformanceClosed Cp := by
  exact And.intro Ev.thermalBarrierEffectivenessClosed
    (And.intro Ev.corrosionResistanceClosed
      (And.intro Ev.wearResistanceClosed Ev.lifecyclePredictionClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
