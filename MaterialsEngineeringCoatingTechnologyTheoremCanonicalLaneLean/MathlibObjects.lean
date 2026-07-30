import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.FractureMechanics

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure CoatingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoatingAdmittedObject where
  space : CoatingSpace
  coatingIntegrity : Prop
  adhesionStrength : Prop
  failureModel : Type
  failureTopology : TopologicalSpace failureModel
  fractureResistance : Prop
  conclusion : fractureResistance

structure CoatingEndgameState where
  object : CoatingAdmittedObject

def CoatingWitnessClosed (O : CoatingAdmittedObject) : Prop :=
  O.fractureResistance

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse