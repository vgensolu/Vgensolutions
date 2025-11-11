# Video Background Instructions

## Adding Your Background Video

The website now supports video backgrounds instead of static images. To add your video:

### 1. Prepare Your Video

**Recommended Specifications:**
- **Format:** MP4 (H.264) and WebM for best browser compatibility
- **Resolution:** 1920x1080 (Full HD) or higher
- **Duration:** 10-30 seconds (shorter loops are less noticeable)
- **File Size:** Keep under 5MB for fast loading (compress if needed)
- **Frame Rate:** 30fps or 60fps
- **Audio:** Not needed (video will be muted for autoplay)

**Tips for Best Results:**
- Use subtle, slow-moving content (avoid fast motions that distract from text)
- Keep colors darker or use gradients that work with the overlay
- Test on mobile devices - ensure it doesn't consume too much data/battery

### 2. Compress Your Video (Optional but Recommended)

Use tools like:
- [HandBrake](https://handbrake.fr/) (free, desktop)
- [CloudConvert](https://cloudconvert.com/mp4-converter) (online)
- [FFmpeg](https://ffmpeg.org/) (command line)

**FFmpeg Example:**
```bash
# Convert to MP4 (H.264)
ffmpeg -i input.mp4 -c:v libx264 -crf 28 -preset slow -vf scale=1920:1080 -an background-video.mp4

# Convert to WebM (VP9)
ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 30 -b:v 0 -vf scale=1920:1080 -an background-video.webm
```

### 3. Add Video Files to Repository

Place your video files in the root directory:
- `background-video.mp4` (required)
- `background-video.webm` (optional but recommended for better browser support)

### 4. Update .gitignore (if needed)

If your video files are large, consider:
1. Hosting them on a CDN or external service
2. Update the video src in `index.html` to point to the hosted URL:

```html
<video class="video-background" autoplay muted loop playsinline>
  <source src="https://your-cdn.com/path/to/background-video.mp4" type="video/mp4">
  <source src="https://your-cdn.com/path/to/background-video.webm" type="video/webm">
</video>
```

### 5. Test Your Implementation

Open `index.html` in a browser and verify:
- ✅ Video plays automatically
- ✅ Video loops seamlessly
- ✅ Text is readable over the video (dark overlay is applied)
- ✅ Video works on mobile (use Chrome DevTools to simulate)
- ✅ Fallback works if video doesn't load

### Current Implementation

The video background has been implemented with:
- **Autoplay:** Video starts automatically when page loads
- **Loop:** Video repeats continuously
- **Muted:** Required for autoplay to work in most browsers
- **Playsinline:** Ensures video plays inline on iOS devices
- **Dark Overlay:** Maintains readability with `body::before` backdrop
- **Fixed Position:** Video stays in place while content scrolls

### Browser Support

✅ Chrome, Firefox, Safari, Edge (all modern versions)
✅ Mobile browsers (iOS Safari, Chrome Mobile, Samsung Internet)

### Fallback Behavior

If video files are not found or browser doesn't support video:
- Background will default to solid color (#0a0a0a)
- Overlay and blur effects remain intact
- Content remains fully readable

### Performance Considerations

- Videos are cached by browsers after first load
- Consider lazy loading for mobile (currently auto-loads)
- Monitor Core Web Vitals (LCP, CLS) after adding video
- Test on 3G/4G connections to ensure acceptable load times

---

**Questions?** Contact the development team or refer to the main README.md
