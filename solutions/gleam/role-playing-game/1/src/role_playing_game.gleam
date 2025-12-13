import gleam/int
import gleam/option.{type Option, None, Some}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  case player {
    Player(name: Some(name), ..) -> name
    _ -> "Mighty Magician"
  }
}

pub fn revive(player: Player) -> Option(Player) {
  case player {
    Player(health: health, level: level, ..) if health <= 0 && level >= 10 ->
      Some(Player(..player, health: 100, mana: Some(100)))
    Player(health: health, ..) if health <= 0 ->
      Some(Player(..player, health: 100))
    _ -> None
  }
}

// The cast_spell function takes as arguments an Int indicating how much mana the spell costs as well as a Player.
// It returns the updated player, as well as the amount of damage that the cast spell performs.
// A successful spell cast does damage equal to two times the mana cost of the spell.
// However, if the player has insufficient mana, nothing happens, the player is unchanged and no damage is done.
// If the player does not even have a mana pool, attempting to cast the spell must decrease their health by the mana cost of the spell and does no damage.
// Be aware that the players health cannot be below zero (0).

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player {
    Player(mana: None, health: health, ..) -> #(
      Player(..player, health: int.max(health - cost, 0)),
      0,
    )
    Player(mana: Some(mana), ..) if mana < cost -> #(player, 0)
    Player(mana: Some(mana), ..) -> #(
      Player(..player, mana: Some(mana - cost)),
      cost * 2,
    )
  }
}
