# Quick Reference Guide - Vgen Solutions

## 📁 File Organization

### Root Directory
- `index.html` - Main website file
- `sw.js` - Service worker for cache management
- `README.md` - Project overview
- `LICENSE` - License information
- `CNAME` - Domain configuration

### Documentation (`/docs`)
- `README.md` - Documentation index
- `THEMES.md` - Complete theme guide
- `CONTRIBUTING.md` - Contribution guidelines
- `guides/` - User and developer guides
- `services/` - Service documentation
- `api/` - API documentation (future)

### Media Assets (`/media`)
- `images/` - Service images and graphics
- `videos/` - Background videos
- `logos/` - Logo files
- `favicons/` - Favicon files

### Other Directories
- `email-templates/` - Professional email templates
- `scripts/` - Utility scripts
- `github/` - GitHub-specific files

## 🎨 Theme Quick Reference

### Primary Colors
| Name | Hex | Usage |
|------|-----|-------|
| Primary Gold | `#EDA800` | Main theme, headers, CTA |
| Goldenrod | `#daa520` | Secondary accents |
| Dark Goldenrod | `#b8860b` | Gradients, shadows |
| Bright Gold | `#ffd700` | Highlights, emphasis |

### Background Colors
| Name | Hex | Usage |
|------|-----|-------|
| Near Black | `#0a0a0a` | Main background |
| Dark Gray | `#1a1a1a` | Cards, surfaces |
| Medium Dark | `#2a2a2a` | Secondary surfaces |

### Text Colors
| Name | Hex | Usage |
|------|-----|-------|
| Cream | `#f5e6d3` | Primary text |
| Light Gray | `#cccccc` | Secondary text |
| White | `#ffffff` | Headers, emphasis |
| Dark | `#333333` | Text on light backgrounds |

### CSS Variable
```css
:root {
  --vgensolutions-primary: #EDA800;
}
```

## 🚀 Common Tasks

### Start Local Development
```bash
# Python 3
python -m http.server 8000

# Node.js
npx http-server

# Then visit: http://localhost:8000
```

### Clear Cache
In browser console:
```javascript
clearSiteCache()
```

### Update Theme Color
1. Edit `index.html`
2. Find `:root` CSS variables
3. Change `--vgensolutions-primary` value
4. Update service worker version in `sw.js`

### Add New Documentation
1. Create file in appropriate `docs/` subdirectory
2. Update `docs/README.md` index
3. Link from main `README.md` if needed

### Add New Media Asset
1. Place file in appropriate `media/` subdirectory
2. Reference with path: `/media/{type}/{filename}`
3. Update cache version if needed

## 🔍 Quick Links

### Documentation
- [Full Theme Guide](THEMES.md)
- [Contributing Guide](CONTRIBUTING.md)
- [Website Status](guides/WEBSITE_STATUS_REPORT.md)
- [Email Templates](guides/EMAIL_TEMPLATES.md)

### External Resources
- [GitHub Repository](https://github.com/vgensolu/Vgensolutions)
- [Live Website](https://vgensolutions.com)
- [MDN Web Docs](https://developer.mozilla.org/)
- [Can I Use](https://caniuse.com/)

## 💡 Tips

### Performance
- ✅ Optimize images before adding (use WebP format)
- ✅ Enable service worker for caching
- ✅ Use lazy loading for images
- ✅ Minify CSS/JS for production

### Accessibility
- ✅ Use semantic HTML elements
- ✅ Add alt text to all images
- ✅ Ensure sufficient color contrast
- ✅ Test with keyboard navigation

### SEO
- ✅ Use descriptive titles and meta tags
- ✅ Include structured data
- ✅ Optimize page load speed
- ✅ Create sitemap.xml

### Security
- ✅ Use HTTPS (enforced by GitHub Pages)
- ✅ No hardcoded secrets or API keys
- ✅ Validate all user inputs
- ✅ Implement CSP headers

## 🐛 Troubleshooting

### Issue: Changes not showing
**Solution**: Clear cache with `clearSiteCache()`

### Issue: Service Worker not updating
**Solution**: 
1. Unregister old service worker
2. Increment cache version in `sw.js`
3. Hard refresh (Ctrl+Shift+R)

### Issue: Media files not loading
**Solution**: 
1. Check file path is correct
2. Verify file exists in `/media` directory
3. Clear cache and reload

### Issue: Styles not applying
**Solution**:
1. Check CSS specificity
2. Verify no typos in class names
3. Clear browser cache
4. Check browser console for errors

## 📞 Getting Help

1. Check documentation in `/docs`
2. Search existing GitHub issues
3. Review contribution guidelines
4. Contact: contact@vgensolutions.com

---

*Last Updated: November 2024*
