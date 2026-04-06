# AGENTS.md

RoHOW conference website built with [Zola](https://www.getzola.org/) static site generator.

## Commands

```bash
# Local dev server (requires podman)
./serve.sh
# Site available at http://localhost:8080

# Build (CI uses docker, but zola works directly if installed)
zola build
```

## Structure

- `content/{year}/{en,de}/` - Markdown pages per year and language
- `content/{year}/data/` - Year-specific TOML data (teams, sponsors)
- `templates/` - Zola Tera templates
- `sass/main.scss` - Compiled to `main.css`
- `static/{year}/` - Year-specific static assets (images, sponsor logos)
- `static/teams/`, `static/rohow/` - Shared static assets

## Key patterns

- **Year-based content**: Each year has its own `content/{year}/` directory with `en/` and `de/` subdirectories
- **Data files**: Teams and sponsors loaded from `content/{year}/data/teams.toml` and `sponsors.toml`
- **Latest year**: Set in `config.toml` via `extra.latest_year` - root redirects here
- **Years list**: `config.extra.years` array controls year selector dropdown
- **Bilingual**: All content pages exist in both `en/` and `de/` subdirectories

## Adding a new year

1. Copy previous year's `content/{year}/` directory
2. Copy `static/{year}/` for assets
3. Update `config.toml`: add year to `extra.years` array, set `extra.latest_year`
4. Update year-specific data in `content/{year}/data/*.toml`

## Team/sponsor logos

- Logos referenced in TOML use paths relative to `static/` (e.g., `assets/img/teams/HULKs.svg`)
- SVGs used directly; other formats resized via Zola's `resize_image`
- Country flags fetched from flagcdn.com using ISO country code

## CI/Deploy

- Pushes to `master` trigger GitHub Pages deploy via `.github/workflows/deploy.yml`
- Uses Zola v0.19.1 in container
