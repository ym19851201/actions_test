sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
gh --version
#url=$(curl -fsSL "https://api.github.com/repos/KarnerTh/mermerd/releases" | jq -r '[.[] | select(.prerelease | not) | .assets[] | select(.name | contains("linux_amd64")) | .browser_download_url][0]')
url=$(gh api /repos/KarnerTh/mermerd/releases -q '[.[] | select(.prerelease | not) | .assets[] | select(.name | contains("linux_amd64")) | .browser_download_url][0]')
curl -fsSL "$url" | tar -zxf - mermerd ./mermerd
chmod a+x ./mermerd
mermerd --version
