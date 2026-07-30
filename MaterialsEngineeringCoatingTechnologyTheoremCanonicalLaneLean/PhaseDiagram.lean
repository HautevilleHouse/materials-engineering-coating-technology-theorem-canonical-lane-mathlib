import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} where
  phaseBoundaries : Prop
  equilibriumPhases : Prop
  temperaturePressureComposition : Prop
  diffusionCouple : Prop
  coatingProcessWindow : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumPhasesClosed : P.equilibriumPhases
  temperaturePressureCompositionClosed : P.temperaturePressureComposition
  diffusionCoupleClosed : P.diffusionCouple
  coatingProcessWindowClosed : P.coatingProcessWindow

def PhaseDiagramClosed {C : CrystallographyPackage} (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.equilibriumPhases ∧ P.temperaturePressureComposition ∧ P.diffusionCouple ∧ P.coatingProcessWindow

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.equilibriumPhasesClosed
      (And.intro E.temperaturePressureCompositionClosed
        (And.intro E.diffusionCoupleClosed E.coatingProcessWindowClosed)))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse