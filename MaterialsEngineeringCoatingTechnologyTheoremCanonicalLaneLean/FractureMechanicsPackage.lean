import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.PhaseDiagramPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure FractureMechanicsPackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  residualStrength : Prop

structure FractureMechanicsEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (F : FractureMechanicsPackage C P) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  residualStrengthClosed : F.residualStrength

def FractureMechanicsClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (F : FractureMechanicsPackage C P) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagation ∧ F.residualStrength

theorem fracture_mechanics_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (F : FractureMechanicsPackage C P) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.fractureToughnessClosed (And.intro E.crackPropagationClosed E.residualStrengthClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse