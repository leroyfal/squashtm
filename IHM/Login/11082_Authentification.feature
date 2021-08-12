# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: VERY_HIGH
# language: fr
Fonctionnalité: Authentification
  Plan du Scénario: Tentative d’authentification avec un compte (login ou pass valide ounon valide).
    Etant donné que je dispose d’un compte utilisateur.
    Quand j’accède à la page d’authentification /auth.html.
    Et que je saisis mon identifiant <Login>  dans le champ <Login>.
    Et que je saisie mon mot de passe « secret » dans le champ <Password>.
    Et que je clique sur le bouton « Connexion » du formulaire.
    Alors je suis authentifié sur le site <AuthentPage>.
    Et je suis redirigé vers la page « Mon compte » à l’URL /mon-compte.html <redirection>.
    Exemples:
    
    | Login      |Password     | AuthentPage      | redirection          |
    | GoodLogin  |GoodPassword | OK               | Moncompte            |
    | GoodLogin  |BadPassword  | error            | Login or Pass failed |
    | BadLogin   |GoodPassword | error            | Login or Pass failed |
    | BadLogin   |BadPassword  | error            | Login or Pass failed |
    |            |BadPassword  | error            | Login or Pass empty  |
    | BadLogin   |             | error            | Login or Pass empty  |
    |            |             | error            | Login or Pass empty  |