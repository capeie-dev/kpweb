# Deployment Checklist

Before deploying your site, complete these steps:

## 1. Personalize Content

- [ ] Edit `hugo.toml`:
  - [ ] Update `baseURL` to your actual domain
  - [ ] Verify `title` is correct
  - [ ] Update `author` name in params
  
- [ ] Edit `content/about.md`:
  - [ ] Add your background and education
  - [ ] List your skills and expertise
  - [ ] Add contact links (GitHub, LinkedIn, email)
  
- [ ] Review homepage (`content/_index.md`):
  - [ ] Customize the introduction
  - [ ] Verify section descriptions

## 2. Content Review

- [ ] Delete or edit sample posts:
  - [ ] `content/fundamentals/matrix-multiplication.md`
  - [ ] `content/projects/image-classifier.md`
  - [ ] `content/thoughts/on-learning-ml.md`
  
- [ ] Create your first real posts:
  - [ ] At least one Fundamentals post
  - [ ] At least one Project
  - [ ] Optional: A Thoughts post

## 3. Test Locally

- [ ] Install Hugo: `brew install hugo`
- [ ] Run: `hugo server -D`
- [ ] Visit: http://localhost:1313
- [ ] Check all pages load correctly
- [ ] Test navigation menu
- [ ] Verify dark mode works
- [ ] Test on mobile (resize browser)

## 4. GitHub Setup

- [ ] Create GitHub account (if needed)
- [ ] Create repository:
  - Option A: `<username>.github.io` (for user site)
  - Option B: Any name (for project site)
  
- [ ] Initialize git in project:
  ```bash
  git init
  git add .
  git commit -m "Initial commit: Hugo blog site"
  git branch -M main
  ```

- [ ] Connect to GitHub:
  ```bash
  git remote add origin https://github.com/<username>/<repo-name>.git
  git push -u origin main
  ```

## 5. Enable GitHub Pages

- [ ] Go to repository Settings
- [ ] Navigate to Pages section
- [ ] Source: GitHub Actions
- [ ] Wait for deployment (check Actions tab)
- [ ] Visit your site at `https://<username>.github.io/<repo-name>/`

## 6. Custom Domain (Optional)

- [ ] Purchase domain (e.g., krishnaprasad.dev)
- [ ] Add CNAME record pointing to `<username>.github.io`
- [ ] In GitHub repo settings > Pages, add custom domain
- [ ] Update `baseURL` in `hugo.toml`
- [ ] Enable HTTPS in GitHub Pages settings

## 7. Post-Deployment

- [ ] Verify all links work
- [ ] Check that images load (if any)
- [ ] Test code syntax highlighting
- [ ] Share your site!

## 8. Regular Maintenance

- [ ] Create new posts regularly
- [ ] Update About page as needed
- [ ] Monitor GitHub Actions for build errors
- [ ] Keep Hugo version updated

## Quick Commands Reference

```bash
# Start dev server
hugo server -D

# Create new post
hugo new fundamentals/post-name.md
hugo new projects/project-name.md
hugo new thoughts/thought-name.md

# Or use helper script
./new-post.sh

# Build for production
hugo --minify

# Deploy (just push to GitHub)
git add .
git commit -m "New post: [title]"
git push
```

## Troubleshooting

**Site not building?**
- Check GitHub Actions tab for errors
- Verify `hugo.toml` syntax
- Ensure all markdown files have valid frontmatter

**Styling looks broken?**
- Clear browser cache
- Check browser console for errors
- Verify CSS file path in theme

**Posts not showing?**
- Set `draft: false` in frontmatter
- Check date is not in future
- Verify file is in correct section folder

## Resources

- Hugo Docs: https://gohugo.io/documentation/
- GitHub Pages: https://docs.github.com/en/pages
- Markdown Guide: https://www.markdownguide.org/

---

Good luck with your blog! 🚀
