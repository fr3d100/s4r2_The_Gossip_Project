# Bienvenue sur mon super The_Gossip_Project
 
Voici quelques commandes qui te permettront de tester le modèle de données :

### Récupérer tous les users d'une ville au hasard
```
tp City.order("RANDOM()").first.users
```

### Récupérer tous les gossip d'un utilisateur au hasard
```
tp User.order("RANDOM()").first.gossips
```

### Récupérer tous les tags d'un Gossip au hasard
```
tp Gossip.order("RANDOM()").first.tags
```

### Récupérer tous les gossips d'un tag au hasard
```
tp Tag.order("RANDOM()").first.gossips
```

### Récupérer tous les messages envoyés par un utilisateur au hasard
```
tp User.find(PrivateMessage.order("RANDOM()").first.sender_id).sent_messages
```

### Avoir tous les destinataire de d'un message envoyé au hasard
```
tp PrivateMessage.order("RANDOM()").first.users
```
===== 
Fait avec :hearts: par @Fred
