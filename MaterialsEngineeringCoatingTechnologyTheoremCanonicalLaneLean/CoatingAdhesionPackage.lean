import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.FractureMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CoatingAdhesionPackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {F : FractureMechanicsPackage C P} where
  adhesionEnergy : Prop
  interfaceRoughness : Prop
  residualStress : Prop
  delaminationThreshold : Prop

structure CoatingAdhesionEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {F : FractureMechanicsPackage C P} (A : CoatingAdhesionPackage C P F) where
  adhesionEnergyClosed : A.adhesionEnergy
  interfaceRoughnessClosed : A.interfaceRoughness
  residualStressClosed : A.residualStress
  delaminationThresholdClosed : A.delaminationThreshold

def CoatingAdhesionClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {F : FractureMechanicsPackage C P} (A : CoatingAdhesionPackage C P F) : Prop :=
  A.adhesionEnergy ∧ A.interfaceRoughness ∧ A.residualStress ∧ A.delaminationThreshold

theorem coating_adhesion_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {F : FractureMechanicsPackage C P} (A : CoatingAdhesionPackage C P F) (E : CoatingAdhesionEvidence A) : CoatingAdhesionClosed A := by
  exact And.intro E.adhesionEnergyClosed (And.intro E.interfaceRoughnessClosed (And.intro E.residualStressClosed E.delaminationThresholdClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse