import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.Elasticity

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure FractureMechanicsPackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityPackage C P} where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  fractureCriterion : Prop
  coatingDelamination : Prop
  serviceLifePrediction : Prop

structure FractureMechanicsEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) where
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  fractureCriterionClosed : F.fractureCriterion
  coatingDelaminationClosed : F.coatingDelamination
  serviceLifePredictionClosed : F.serviceLifePrediction

def FractureMechanicsClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) : Prop :=
  F.crackPropagation ∧ F.stressIntensityFactor ∧ F.energyReleaseRate ∧ F.fractureCriterion ∧ F.coatingDelamination ∧ F.serviceLifePrediction

theorem fracture_mechanics_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) (Ev : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro Ev.crackPropagationClosed
    (And.intro Ev.stressIntensityFactorClosed
      (And.intro Ev.energyReleaseRateClosed
        (And.intro Ev.fractureCriterionClosed
          (And.intro Ev.coatingDelaminationClosed Ev.serviceLifePredictionClosed))))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse