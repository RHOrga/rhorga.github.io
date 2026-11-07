# [rohow.de](https://rohow.de)

Website of the annual RoHOW conference at the Hamburg University of Technology organized by the [HULKs](https://hulks.de)

## Development

Run `./serve.sh` (Podman required) and open http://localhost:8080.
Development and deployment use Zola **0.23.6**. With that version installed,
`zola build` also works directly.

## Latest event

`/` and `/latest/` redirect to the English homepage of `extra.latest_year`
in `config.toml`. `/latest/en/` and `/latest/de/` select the language.
These are static redirects with a fallback link, compatible with GitHub Pages.
Update `extra.latest_year` when adding a new year; no redirect edits are needed.

Reusable content components use Zola 0.23 syntax, for example:
`{{ <image src="assets/img/example.jpg" alt="Description" /> }}`.
