<div align="center">

# 🏋️ Exercism Solutions

**My solutions to [Exercism](https://exercism.org) exercises, synced automatically from the platform.**

[![Exercism](https://img.shields.io/badge/Exercism-solutions-604FCD?style=flat-square&logo=exercism&logoColor=white)](https://exercism.org)
[![Elixir](https://img.shields.io/badge/Elixir-12_exercises-4B275F?style=flat-square&logo=elixir&logoColor=white)](https://exercism.org/tracks/elixir)
[![Gleam](https://img.shields.io/badge/Gleam-11_exercises-ffaff3?style=flat-square&logo=gleam&logoColor=black)](https://exercism.org/tracks/gleam)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow?style=flat-square)](LICENSE)

</div>

## Tracks

<table>
<tr>
<th>Elixir</th>
<th>Gleam</th>
</tr>
<tr>
<td valign="top">

| Exercise | Iterations |
| -------- | ---------: |
| [bird-count](solutions/elixir/bird-count) | 2 |
| [darts](solutions/elixir/darts) | 1 |
| [freelancer-rates](solutions/elixir/freelancer-rates) | 1 |
| [guessing-game](solutions/elixir/guessing-game) | 3 |
| [hello-world](solutions/elixir/hello-world) | 1 |
| [high-school-sweetheart](solutions/elixir/high-school-sweetheart) | 1 |
| [kitchen-calculator](solutions/elixir/kitchen-calculator) | 1 |
| [language-list](solutions/elixir/language-list) | 4 |
| [lasagna](solutions/elixir/lasagna) | 2 |
| [log-level](solutions/elixir/log-level) | 1 |
| [pacman-rules](solutions/elixir/pacman-rules) | 1 |
| [secrets](solutions/elixir/secrets) | 1 |

</td>
<td valign="top">

| Exercise | Iterations |
| -------- | ---------: |
| [bandwagoner](solutions/gleam/bandwagoner) | 1 |
| [bettys-bike-shop](solutions/gleam/bettys-bike-shop) | 2 |
| [guessing-game](solutions/gleam/guessing-game) | 1 |
| [hello-world](solutions/gleam/hello-world) | 1 |
| [lasagna](solutions/gleam/lasagna) | 1 |
| [log-levels](solutions/gleam/log-levels) | 1 |
| [pacman-rules](solutions/gleam/pacman-rules) | 1 |
| [role-playing-game](solutions/gleam/role-playing-game) | 1 |
| [secrets](solutions/gleam/secrets) | 1 |
| [treasure-chest](solutions/gleam/treasure-chest) | 1 |
| [valentines-day](solutions/gleam/valentines-day) | 1 |

</td>
</tr>
</table>

## Layout

```text
solutions/<track>/<exercise>/<iteration>/
```

Every submitted iteration is kept, so you can see how a solution evolved. Exercism's GitHub syncer opens one pull request per iteration or per track sync.

## Utilities

[`squash-merge-prs.sh`](squash-merge-prs.sh) walks through the open pull requests oldest first, shows each one and asks whether to squash-merge it. It needs the [GitHub CLI](https://cli.github.com/), authenticated:

```bash
./squash-merge-prs.sh
```

## License

[MIT](LICENSE) © Nicolás Sanchez
