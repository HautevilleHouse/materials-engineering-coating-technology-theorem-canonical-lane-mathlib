import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLattice : Prop
  unitCellProperties : Prop
  symmetryGroup : Prop
  crystallographicCoatingAdhesion : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClosed : C.bravaisLattice
  unitCellPropertiesClosed : C.unitCellProperties
  symmetryGroupClosed : C.symmetryGroup
  crystallographicCoatingAdhesionClosed : C.crystallographicCoatingAdhesion

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLattice ∧ C.unitCellProperties ∧ C.symmetryGroup ∧ C.crystallographicCoatingAdhesion

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeClosed
      (And.intro E.unitCellPropertiesClosed
        (And.intro E.symmetryGroupClosed E.crystallographicCoatingAdhesionClosed)))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse