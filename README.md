# A Rails Web App (only back-end)


## LES BASES
Commence par créer une application Rails, puis mets les bonnes versions de Ruby et Rails dans le Gemfile.

## LES USERS
Crée une classe User, qui aura comme attributs :

Un first_name, qui est un string
Un last_name, qui est un string
Un description, qui est un text
Un email, qui est un string
Un age, qui est un integer
Tu vas faire 10 utilisateurs en base avec Faker.

## LES VILLES
Crée une classe City, qui aura comme attributs :

Un name, qui est un string
Un zip_code, qui est un string
Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs. 
Tu vas faire 10 villes en base avec Faker et les lier avec les utilisateurs du seed.

## LES GOSSIPS
Crée une classe Gossip, qui aura comme attributs :

Un title, qui est un string
Un content, qui est un text
Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur. 
Tu vas faire 20 gossips en base avec Faker et les lier avec leur auteur.

## LES TAGS
Crée une classe Tag, qui aura comme attributs :

Un title, qui est un string
Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #bromance). 
Tu vas faire 10 tags en base avec Faker. Chaque gossip aura (au minimum) un tag.

## LES MESSAGES PRIVÉS
Crée une classe PrivateMessage, qui aura comme attributs :

Un content, qui est un text
Un PM aura un expéditeur et un (ou plusieurs) destinataires. 
Tu vas faire quelques PM en base avec Faker et leur donner un expéditeur et un (ou plusieurs) destinataires.

