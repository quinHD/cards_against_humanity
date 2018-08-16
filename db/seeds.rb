u = User.create(nick: "quino", email: "quino@gmail.com", role: "admin")
c1 = Card.create(statement: "Una lata de ostias.", color: "white", user: u)
c2 = Card.create(statement: "Una antílope con gases.", color: "white", user: u)
c3 = Card.create(statement: "Un león de zoo deprimido.", color: "white", user: u)
c4 = Card.create(statement: "¿Por qué me duele todo?.", color: "black", user: u)
c5 = Card.create(statement: "Bebo para olvidar __gap__.", color: "black", user: u)

c6 = Card.create(statement: "SIDA", color: "white", user: u)
c7 = Card.create(statement: "Manos de Jazz vigorosas.", color: "white", user: u)

d1 = Deck.create(cards: [c1, c2, c3, c4, c5], user: u)
d2 = Deck.create(cards: [c6, c7], user: u)

g = Game.create(decks: [d1])
