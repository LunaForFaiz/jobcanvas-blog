#!/bin/bash

# Verification script for JobCanvas blog posts
# Checks word counts, keyword presence, and anti-AI compliance

echo "========================================="
echo "JobCanvas Blog Verification Report"
echo "========================================="
echo ""

echo "📝 Post Analysis:"
echo ""

for post in posts/*.md; do
    filename=$(basename "$post")
    echo "▸ $filename"
    
    # Word count
    words=$(wc -w < "$post")
    echo "  Words: $words"
    
    # Check for em dashes (should be 0)
    em_dashes=$(grep -o "—" "$post" | wc -l)
    echo "  Em dashes: $em_dashes ❌ SHOULD BE 0"
    
    # Check for AI filler words
    delve=$(grep -i "delve" "$post" | wc -l)
    tapestry=$(grep -i "tapestry" "$post" | wc -l)
    landscape=$(grep -i "landscape" "$post" | wc -l)
    crucial=$(grep -i "crucial" "$post" | wc -l)
    
    echo "  AI filler words: delve($delve), tapestry($tapestry), landscape($landscape), crucial($crucial)"
    
    # Count H2/H3 headers
    headers=$(grep -E "^##+ " "$post" | wc -l)
    echo "  Headers: $headers"
    
    echo ""
done

echo "========================================="
echo "Repository Status:"
echo "========================================="
git status --short
echo ""

echo "========================================="
echo "Recent Commits:"
echo "========================================="
git log --oneline -5
echo ""

echo "✅ Verification complete!"
echo "Next: Deploy to Vercel and source real images"
