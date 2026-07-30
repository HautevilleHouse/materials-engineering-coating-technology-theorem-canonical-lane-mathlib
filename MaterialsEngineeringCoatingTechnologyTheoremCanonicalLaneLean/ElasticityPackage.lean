import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Float
  poissonRatio : Float
  stressStrainRelation : Prop
  elasticDeformationEnergy : Prop
  
structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticDeformationEnergyClosed : E.elasticDeformationEnergy

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.elasticDeformationEnergy

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed Ev.elasticDeformationEnergyClosed

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse