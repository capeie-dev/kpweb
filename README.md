# Krishna Prasad - AI Engineer Blog

A minimal, clean blog built with Hugo to showcase AI/ML fundamentals, projects, and thoughts.

## Structure

- **Fundamentals** - Deep-ML problem solutions and AI/DL fundamentals
- **Projects** - AI/ML projects and implementations
- **Thoughts** - Ideas and reflections on AI and technology
- **About** - Personal information and background

## Prerequisites

Install Hugo:
```bash
# macOS
brew install hugo

# Or download from https://gohugo.io/installation/
```

## Getting Started

1. **Run the development server:**
```bash
hugo server -D
```

Visit `http://localhost:1313` to see your site.

2. **Create new content:**

```bash
# New fundamental post
hugo new fundamentals/your-post-name.md

# New project
hugo new projects/your-project-name.md

# New thought
hugo new thoughts/your-thought-name.md
```

3. **Edit content:**

All content is in Markdown format in the `content/` directory:
- `content/fundamentals/` - Fundamental concepts and problems
- `content/projects/` - Project showcases
- `content/thoughts/` - Blog posts and reflections
- `content/about.md` - About page

## Content Format

Each post should have frontmatter like this:

```markdown
---
title: "Your Post Title"
date: 2025-01-15
draft: false
tags: ["tag1", "tag2"]
---

# Your content here

Write your post in Markdown...
```

## Building for Production

```bash
hugo --minify
```

This creates a `public/` directory with your static site.

## Deployment

### GitHub Pages

1. Create a repository named `<username>.github.io`
2. Push your code to the repository
3. Add GitHub Actions workflow (see `.github/workflows/hugo.yml`)
4. GitHub will automatically build and deploy your site

### Manual Deployment

1. Build the site: `hugo --minify`
2. Upload the `public/` directory to your hosting provider

## Customization

### Site Configuration

Edit `hugo.toml` to change:
- Site title and description
- Base URL
- Author information
- Menu items

### Styling

Edit `themes/minimal/static/css/style.css` to customize the design.

The theme supports dark mode automatically based on system preferences.

### Adding New Sections

1. Create a new directory in `content/`
2. Add an `_index.md` file
3. Add the section to the menu in `hugo.toml`

## Tips

- Set `draft: false` in frontmatter to publish posts
- Use `hugo server -D` to preview draft posts
- Code blocks support syntax highlighting
- Images go in `static/images/` and reference as `/images/filename.png`

## License

MIT
