# Vercel Deployment Guide for JobCanvas Blog

## Quick Deploy

The repository is ready for Vercel deployment: `https://github.com/LunaForFaiz/jobcanvas-blog`

### Option 1: Import via Vercel Dashboard (Recommended)

1. Go to [vercel.com/new](https://vercel.com/new)
2. Import Git repository: `LunaForFaiz/jobcanvas-blog`
3. Configure project:
   - **Framework Preset:** Next.js (or Static Site)
   - **Root Directory:** `./`
   - **Build Command:** (auto-detected)
   - **Output Directory:** (auto-detected)
4. Click "Deploy"
5. Domain will be auto-generated: `jobcanvas-blog.vercel.app`

### Option 2: CLI Deployment

```bash
cd /root/.openclaw/workspace/jobcanvas-blog
npm install -g vercel
vercel login
vercel --prod
```

## Custom Domain Configuration

To use a custom domain (e.g., `blog.jobcanvas.ai`):

1. In Vercel dashboard → Project Settings → Domains
2. Add domain: `blog.jobcanvas.ai`
3. Configure DNS records:
   ```
   Type: CNAME
   Name: blog
   Value: cname.vercel-dns.com
   ```

## Blog Framework Options

### Option A: Next.js with MDX (Recommended for SEO)

The markdown posts can be rendered with Next.js for optimal SEO:

```bash
npx create-next-app@latest . --use-npm
npm install @next/mdx @mdx-js/loader gray-matter
```

### Option B: Static Site with Jekyll/Hugo

Markdown posts work natively with static site generators.

### Option C: Custom React Blog

Build a lightweight React app that parses markdown and renders blog posts.

## Environment Setup (if needed)

No environment variables are currently required. All content is public markdown.

## Deployment Status

- ✅ Repository created: `https://github.com/LunaForFaiz/jobcanvas-blog`
- ⏳ Vercel connection: Pending manual setup
- ⏳ Live URL: To be generated after Vercel import
- ⏳ Custom domain: Optional, configure after deployment

## Post-Deployment Verification

Once deployed, verify:

1. Homepage loads: `https://jobcanvas-blog.vercel.app`
2. Individual posts render correctly
3. Images load from `/images/` directory
4. SEO meta tags are present (title, description, Open Graph)
5. Mobile responsive design
6. Page load speed (<3 seconds)

## Next Steps for Faiz

1. **Import repository to Vercel** (5 minutes)
   - Go to vercel.com/new
   - Select LunaForFaiz/jobcanvas-blog
   - Deploy

2. **Choose blog framework** (or I can set this up)
   - Next.js + MDX for dynamic rendering
   - OR static HTML if simpler

3. **Configure custom domain** (optional)
   - Point blog.jobcanvas.ai to Vercel

4. **Replace image placeholders** (ongoing)
   - Source from Unsplash/Pexels
   - OR generate with DALL-E/Midjourney

Let me know which approach you prefer and I'll complete the setup!

---

**Repository:** https://github.com/LunaForFaiz/jobcanvas-blog  
**Created:** March 19, 2026  
**Status:** Ready for Vercel import
