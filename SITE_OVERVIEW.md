# Site Overview - Krishna Prasad's AI Engineering Blog

## What Was Built

A complete Hugo static site with a custom minimal theme, similar to the steelph0enix.dev blog you referenced.

## Site Structure

```
coolweb/
├── hugo.toml                 # Main configuration
├── content/                  # All your content (edit these!)
│   ├── _index.md            # Homepage
│   ├── about.md             # About page
│   ├── fundamentals/        # Deep-ML problems & AI fundamentals
│   │   ├── _index.md
│   │   └── matrix-multiplication.md (sample)
│   ├── projects/            # Your AI/ML projects
│   │   ├── _index.md
│   │   └── image-classifier.md (sample)
│   └── thoughts/            # Blog posts & reflections
│       ├── _index.md
│       └── on-learning-ml.md (sample)
├── themes/minimal/          # Custom theme
│   ├── layouts/             # HTML templates
│   └── static/css/          # Styling
└── .github/workflows/       # Auto-deployment to GitHub Pages
```

## Features

### ✅ Four Main Sections
1. **Fundamentals** - Solve Deep-ML questions, demonstrate AI/DL knowledge
2. **Projects** - Showcase your AI/ML projects
3. **Thoughts** - Share ideas and reflections
4. **About** - Personal information and background

### ✅ Design Features
- Clean, minimal design inspired by steelph0enix.dev
- Automatic dark mode support (follows system preference)
- Responsive layout (mobile-friendly)
- Fast loading (static site)
- Syntax highlighting for code blocks
- Tag support for posts

### ✅ Content Management
- All content in Markdown format
- Easy to edit and add new posts
- Frontmatter for metadata (title, date, tags)
- Sample posts included as templates

### ✅ Deployment Ready
- GitHub Actions workflow included
- Automatic deployment to GitHub Pages
- Just push to main branch and it deploys

## How to Use

### 1. Install Hugo
```bash
brew install hugo
```

### 2. Start Development Server
```bash
hugo server -D
```
Visit: http://localhost:1313

### 3. Create New Posts

**Option A: Use the helper script**
```bash
./new-post.sh
```

**Option B: Use Hugo command**
```bash
hugo new fundamentals/your-post.md
hugo new projects/your-project.md
hugo new thoughts/your-thought.md
```

### 4. Edit Content
- All content is in `content/` directory
- Edit with any text editor
- Markdown format with frontmatter
- Set `draft: false` to publish

### 5. Customize

**Site Information** (`hugo.toml`):
- Change baseURL to your domain
- Update author name
- Modify menu items

**About Page** (`content/about.md`):
- Add your background
- List your skills
- Add contact information

**Styling** (`themes/minimal/static/css/style.css`):
- Customize colors
- Adjust fonts
- Modify layout

## Sample Post Format

```markdown
---
title: "Your Post Title"
date: 2025-01-15
draft: false
tags: ["tag1", "tag2"]
---

# Main Heading

Your content here in Markdown...

## Code Example

\`\`\`python
def example():
    return "Hello World"
\`\`\`

## Lists

- Item 1
- Item 2
```

## Deployment to GitHub Pages

1. Create a GitHub repository (e.g., `username.github.io`)
2. Initialize git and push:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/username/username.github.io.git
   git push -u origin main
   ```
3. Enable GitHub Pages in repository settings
4. Site will auto-deploy on every push to main

## Next Steps

1. ✏️ Edit `content/about.md` with your information
2. ✏️ Update `hugo.toml` with your details
3. ✏️ Delete or edit sample posts
4. ✏️ Create your first real post
5. 🚀 Deploy to GitHub Pages

## Tech Stack

- **Static Site Generator:** Hugo
- **Theme:** Custom minimal theme
- **Styling:** Pure CSS with CSS variables
- **Deployment:** GitHub Pages with GitHub Actions
- **Content Format:** Markdown

## Support

- Hugo Documentation: https://gohugo.io/documentation/
- Markdown Guide: https://www.markdownguide.org/
- See README.md for detailed instructions
