void main() {
  Deck deck = new Deck();
  print("Original Deck:");
  print(deck);
  print("\nDealt Hand");
  print(deck.deal(5));
  deck.removeCard(new Card(rank: Rank.Ace, suit: Suit.Spades));
  print("\nFinal Deck");
  print(deck);
}

enum Rank {
  Ace,
  Two,
  Three,
  Four,
  Five,
  Six,
  Seven,
  Eight,
  Nine,
  Jack,
  Queen,
  King,
}

enum Suit {
  Diamonds,
  Hearts,
  Clubs,
  Spades,
}

class Deck {
  // static final List<String> ranks = [
  //   "Ace",
  //   "Two",
  //   "Three",
  //   "Four",
  //   "Five",
  //   "Six",
  //   "Seven",
  //   "Eight",
  //   "Nine",
  //   "Jack",
  //   "Queen",
  //   "King",
  // ];
  // static final List<String> suits = [
  //   "Diamonds",
  //   "Hearts",
  //   "Clubs",
  //   "Spades",
  // ];

  // We have to initialize this with [] (empty array) here
  // If this needs to be initialized with something else
  // in a method, we need to mark it as 'late'
  List<Card> cards = [];

  Deck() {
    // for (String suit in suits) {
    for (Suit suit in Suit.values) {
      // for (String rank in ranks) {
      for (Rank rank in Rank.values) {
        // Positional Arguments
        // Card card = new Card(rank, suit);

        // Named Arguments
        Card card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  Iterable<Card> cardWithSuit(Suit suit) {
    return cards.where((card) => card.suit == suit);
  }

  List<Card> deal(int handSize) {
    List<Card> hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  void removeCard(Card cardToRemove) {
    cards.removeWhere((card) =>
        card.suit == cardToRemove.suit && card.rank == cardToRemove.rank);
  }
}

class Card {
  // String rank;
  // String suit;
  Rank rank;
  Suit suit;

  // Positional Parameters
  // Card(this.rank, this.suit);

  // Named Parameters
  Card({required this.rank, required this.suit});

  String toString() {
    return "${rank.name} of ${suit.name}";
    // return "Card(suit:$suit, rank:$rank)";
  }
}
