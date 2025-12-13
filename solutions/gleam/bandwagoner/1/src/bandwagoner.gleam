pub type Coach {
  Coach(name: String, former_player: Bool)
}

pub type Stats {
  Stats(wins: Int, losses: Int)
}

pub type Team {
  Team(name: String, coach: Coach, stats: Stats)
}

pub fn create_coach(name: String, former_player: Bool) -> Coach {
  Coach(name: name, former_player: former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins: wins, losses: losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(name: name, coach: coach, stats: stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  Team(..team, coach: coach)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  home_team.name == away_team.name
  && home_team.coach == away_team.coach
  && home_team.stats == away_team.stats
}

pub fn root_for_team(team: Team) -> Bool {
  case team {
    Team(coach: coach, ..) if coach.name == "Gregg Popovich" -> True
    Team(coach: coach, ..) if coach.former_player -> True
    Team(name: "Chicago Bulls", ..) -> True
    Team(stats: stats, ..) if stats.wins >= 60 -> True
    Team(stats: stats, ..) if stats.losses > stats.wins -> True
    _ -> False
  }
}
