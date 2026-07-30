import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeParameters : Prop
  spaceGroup : Prop
  defectDensity : Prop
  phaseIdentification : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  spaceGroupClosed : C.spaceGroup
  defectDensityClosed : C.defectDensity
  phaseIdentificationClosed : C.phaseIdentification

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.spaceGroup ∧ C.defectDensity ∧ C.phaseIdentification

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.spaceGroupClosed (And.intro E.defectDensityClosed E.phaseIdentificationClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse