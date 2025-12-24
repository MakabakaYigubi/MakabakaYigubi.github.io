# Sophia Tang-style site (al-folio-based, no copied content)

This folder is a **look-and-feel clone** of `sophtang.github.io` using the same open-source stack (**Jekyll + al-folio**).

It does **not** include Sophia Tang’s copyrighted content (text/images/CV/publication list).

## What you get

- About / Publications / Technical Articles / CV pages
- Updates (“news”) section
- Dark/light/system theme toggle (provided by al-folio)
- Publication system (BibTeX via `jekyll-scholar`)
- GitHub Pages deploy workflow

## Quick start (local)

Requires Ruby + Bundler.

Notes:

- This repo includes a small SCSS compatibility override at `_sass/_themes.scss` so it can build on older Ruby environments.
- If you see native-gem architecture errors on Apple Silicon, run `bundle config set force_ruby_platform true` and re-install.

### Bundler version

GitHub Actions uses Ruby 3.x, where **Bundler 1.x will fail** (because Ruby removed `untaint`).

Use Bundler **2.4.22**:

```bash
gem install --user-install bundler -v 2.4.22
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
bundle _2.4.22_ install
bundle _2.4.22_ exec jekyll serve
```

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://127.0.0.1:4000/`.

## Deploy to GitHub Pages

1. Push this folder to a GitHub repo.
2. In repo settings → **Pages**:
   - **Build and deployment**: GitHub Actions
3. The included workflow will build & deploy automatically.

## Customize

- `_config.yml`: name/email/social links, site url/baseurl
- `_pages/about.md`: your bio + profile settings
- `_pages/publications.md`: publications page
- `_bibliography/papers.bib`: your BibTeX
- `_news/*.md`: updates entries
- `assets/pdf/CV.pdf`: your CV



