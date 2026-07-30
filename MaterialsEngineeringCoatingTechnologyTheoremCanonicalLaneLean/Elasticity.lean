import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.PhaseDiagram

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure ElasticityPackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} where
  stressStrainConstitutive : Prop
  elasticModuli : Prop
  mismatchStrain : Prop
  thermalStress : Prop
  fractureToughness : Prop
  coatingAdhesionStrength : Prop

structure ElasticityEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityPackage C P) where
  stressStrainConstitutiveClosed : E.stressStrainConstitutive
  elasticModuliClosed : E.elasticModuli
  mismatchStrainClosed : E.mismatchStrain
  thermalStressClosed : E.thermalStress
  fractureToughnessClosed : E.fractureToughness
  coatingAdhesionStrengthClosed : E.coatingAdhesionStrength

def ElasticityClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityPackage C P) : Prop :=
  E.stressStrainConstitutive ∧ E.elasticModuli ∧ E.mismatchStrain ∧ E.thermalStress ∧ E.fractureToughness ∧ E.coatingAdhesionStrength

theorem elasticity_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityPackage C P) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainConstitutiveClosed
    (And.intro Ev.elasticModuliClosed
      (And.intro Ev.mismatchStrainClosed
        (And.intro Ev.thermalStressClosed
          (And.intro Ev.fractureToughnessClosed Ev.coatingAdhesionStrengthClosed))))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse