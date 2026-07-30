import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} where
  equilibriumPhases : Prop
  transformationKinetics : Prop
  thermalStability : Prop
  compositionRange : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  equilibriumPhasesClosed : P.equilibriumPhases
  transformationKineticsClosed : P.transformationKinetics
  thermalStabilityClosed : P.thermalStability
  compositionRangeClosed : P.compositionRange

def PhaseDiagramClosed {C : CrystallographyPackage} (P : PhaseDiagramPackage C) : Prop :=
  P.equilibriumPhases ∧ P.transformationKinetics ∧ P.thermalStability ∧ P.compositionRange

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumPhasesClosed (And.intro E.transformationKineticsClosed (And.intro E.thermalStabilityClosed E.compositionRangeClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse