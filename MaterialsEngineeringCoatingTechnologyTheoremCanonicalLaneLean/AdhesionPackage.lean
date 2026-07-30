import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean

structure AdhesionPackage where
  interfaceEnergy : Float
  workOfAdhesion : Float
  bondStrength : Prop
  thermalSpallationResistance : Prop
  
structure AdhesionEvidence (A : AdhesionPackage) where
  interfaceEnergyClosed : A.interfaceEnergy > 0
  workOfAdhesionClosed : A.workOfAdhesion > 0
  bondStrengthClosed : A.bondStrength
  thermalSpallationResistanceClosed : A.thermalSpallationResistance

def AdhesionClosed (A : AdhesionPackage) : Prop :=
  (A.interfaceEnergy > 0) ∧ (A.workOfAdhesion > 0) ∧ A.bondStrength ∧ A.thermalSpallationResistance

theorem adhesion_closed_from_evidence (A : AdhesionPackage) (E : AdhesionEvidence A) : AdhesionClosed A := by
  exact And.intro E.interfaceEnergyClosed (And.intro E.workOfAdhesionClosed (And.intro E.bondStrengthClosed E.thermalSpallationResistanceClosed))

end MaterialsEngineeringCoatingTechnologyTheoremCanonicalLaneLean
end HautevilleHouse