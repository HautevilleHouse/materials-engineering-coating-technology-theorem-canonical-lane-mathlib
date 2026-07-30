import MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CoatingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoatingAdmittedObject where
  space : CoatingSpace
  substrateInterface : Prop
  coatingLayer : Prop
  adhesionStrength : Prop
  thermalProtection : Prop
  conclusion : adhesionStrength

def CoatingWitnessClosed (O : CoatingAdmittedObject) : Prop :=
  O.adhesionStrength

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
