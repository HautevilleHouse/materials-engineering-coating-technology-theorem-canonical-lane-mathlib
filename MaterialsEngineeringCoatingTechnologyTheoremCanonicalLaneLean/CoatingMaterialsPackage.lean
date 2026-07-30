import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CoatingMaterialsPackage where
  material : Type u
  coatingProcess : Type v
  interfaceProperties : Prop
  diffusionBarrier : Prop
  thermalExpansionMatch : Prop
  adhesionMechanism : Prop

structure CoatingMaterialsEvidence (C : CoatingMaterialsPackage) where
  interfacePropertiesClosed : C.interfaceProperties
  diffusionBarrierClosed : C.diffusionBarrier
  thermalExpansionMatchClosed : C.thermalExpansionMatch
  adhesionMechanismClosed : C.adhesionMechanism

def CoatingMaterialsClosed (C : CoatingMaterialsPackage) : Prop :=
  C.interfaceProperties ∧ C.diffusionBarrier ∧
  C.thermalExpansionMatch ∧ C.adhesionMechanism

theorem coating_materials_closed_from_evidence (C : CoatingMaterialsPackage)
    (E : CoatingMaterialsEvidence C) : CoatingMaterialsClosed C := by
  exact And.intro E.interfacePropertiesClosed
    (And.intro E.diffusionBarrierClosed
      (And.intro E.thermalExpansionMatchClosed E.adhesionMechanismClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
