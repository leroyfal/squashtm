# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: fr
#critères d’acceptation

Fonctionnalité: provisioning bracelet dans le back-office Osmium
  Plan du Scénario: provisionner le bracelet dans le back-office Osmium.
    Etant donné que je suis exploitant ayant les droits panel dans le cockpit.
    Quand j'importe la bande usine du bracelet <watch_bu>.
    Et que le type de fichier <fileFormat> et le format des données sont respectées <dataValue>
    Alors le bracelet est provisionné et le backoffice affiche le message  <Msg_bo> après validation.
    
		Exemples:
		| watch_bu	|fileFormat     |dataValue	    | Msg_bo                                     |
		| pas_de_bu | NA            |NA             | Cannot add Meters                          |
		| bu        | xml           |value_ok       | Add Meter_id OK                            |
	  | bu        | xml           |PR_Invalid     | Cannot add Meters Invalid format           |
	  | bu        | xml           |SN_Invalid     | Cannot add Meters Invalid format           |
	  | bu        | xml           |PD_Invalid     | Cannot add Meters Invalid format           |
	  | bu        | xml           |SV_Invalid     | Cannot add Meters Invalid format           |
	  | bu        | xml           |MID_Invalid    | Cannot add Meters Invalid format           |
		| bu        | other         |value_ok       | Cannot add Meters Invalid format           |
	  | bu        | other         |value_ko       | Cannot add Meters Invalid format           |