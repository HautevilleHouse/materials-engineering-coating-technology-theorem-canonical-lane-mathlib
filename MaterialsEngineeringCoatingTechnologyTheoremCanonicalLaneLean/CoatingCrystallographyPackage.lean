import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  spaceGroup : Type v
  bravaisLattice : Type w
  latticeParameters : Type x
  atomicPositions : Type y
  powderPattern : Type z
  symmetryOperations : Prop
  unitCellDimensions : Prop
  diffractionIntensities : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  symmetryOperationsClosed : C.symmetryOperations
  unitCellDimensionsClosed : C.unitCellDimensions
  diffractionIntensitiesClosed : C.diffractionIntensities

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.symmetryOperations ∧ C.unitCellDimensions ∧ C.diffractionIntensities

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.symmetryOperationsClosed
    (And.intro E.unitCellDimensionsClosed E.diffractionIntensitiesClosed)

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse