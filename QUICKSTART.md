# Quick Start Guide

## 1. Install Hugo

```bash
brew install hugo
```

Or download from: https://gohugo.io/installation/macos/

## 2. Start the Development Server

```bash
cd /Users/capeie/projects/kpweb/coolweb
hugo server -D
```

Then open: http://localhost:1313

## 3. Create Your First Post

### Fundamentals Post
```bash
hugo new fundamentals/backpropagation-explained.md
```

### Project Post
```bash
hugo new projects/sentiment-analyzer.md
```

### Thought Post
```bash
hugo new thoughts/ai-ethics.md
```

## 4. Edit Content

All markdown files are in the `content/` directory. Edit them with any text editor.

Example post structure:
```markdown
---
title: "Understanding Backpropagation"
date: 2025-01-15
draft: false
tags: ["deep-learning", "neural-networks"]
---

# Understanding Backpropagation

Your content here...
```

## 5. Customize

- **Site info**: Edit `hugo.toml`
- **About page**: Edit `content/about.md`
- **Styling**: Edit `themes/minimal/static/css/style.css`

## 6. Deploy to GitHub Pages

1. Create a GitHub repository
2. Push your code
3. Enable GitHub Pages in repository settings
4. The GitHub Action will automatically deploy

## Need Help?

See the full README.md for detailed instructions.
