# Git Config
if [ -n "$GITHUB_USER" ] && [ -n "$GITHUB_EMAIL" ]; then
    git config --global user.name "$GITHUB_USER"
    git config --global user.email "$GITHUB_USER"
fi

# Git token
if [ -n "$GITHUB_TOKEN" ]; then
    git clone https://$GITHUB_TOKEN@github.com/jacdylngab/timeweb
fi
