sudo apt update -y;
sudo apt upgrade -y;

echo "-------------------------------------"
echo "INSTALLING WEBAPP PENTESTING TOOLS"
echo "-------------------------------------"

sudo apt install golang-go -y;
sudo apt install subfinder sublist3r httprobe httpx-toolkit naabu dirsearch gobuster -y;
sudo apt install dnsx -y;

go install github.com/tomnomnom/assetfinder@latest;
go install github.com/tomnomnom/meg@latest;
go install github.com/tomnomnom/anew@latest;
go install github.com/tomnomnom/gf@latest;
go install github.com/tomnomnom/burl@latest;
go install github.com/tomnomnom/waybackurls@latest;
go install github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest;
go install github.com/projectdiscovery/katana/cmd/katana@latest;
go install github.com/projectdiscovery/urlfinder/cmd/urlfinder@latest;
go install github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest;
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest;
go install github.com/projectdiscovery/asnmap/cmd/asnmap@latest;
go install github.com/projectdiscovery/uncover/cmd/uncover@latest;
go install github.com/projectdiscovery/tldfinder/cmd/tldfinder@latest;
go install github.com/projectdiscovery/cvemap/cmd/cvemap@latest;
go install github.com/projectdiscovery/cloudlist/cmd/cloudlist@latest;
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest;
go install github.com/lc/gau/v2/cmd/gau@latest;
go install github.com/PentestPad/subzy@latest;

cd ~/Desktop;
git clone https://github.com/1ndianl33t/Gf-Patterns;
cd ~/;
mkdir .gf;
mv ~/Desktop/Gf-Patterns/*.json ~/.gf;
for i in $(ls ~/go/bin/); do sudo ln -s ~/go/bin/$i /usr/bin/$i ;done;

echo "----------------------------------------"
echo "INSTALLING MOBILE APP PENTESTING TOOLS"
echo "----------------------------------------"

sudo apt install google-android-platform-tools-installer -y;
sudo apt install openjdk-17-jdk openjdk-17-jre -y;
sudo apt install jadx -y;
sudo apt install apktool -y;
sudo apt install dex2jar -y;

pip install frida-tools;
sudo cp /home/$(hostname)/.local/bin/frida /usr/bin/.;

pip install drozer;
sudo cp /home/$(hostname)/.local/bin/drozer /usr/bin/.;

wget https://github.com/WithSecureLabs/drozer-agent/releases/download/3.1.0/drozer-agent.apk;

pip install objection;
sudo apt install sqlitebrowser -y;

echo "---------------------------------"
echo "INSTALLING API PENTESTING TOOLS"
echo "---------------------------------"

pip install mitmproxy2swagger;
sudo cp /home/$(hostname)/.local/bin/mitmproxy2swagger /usr/bin/.;

pip install arjun;
sudo cp /home/$(hostname)/.local/bin/arjun /usr/bin/.;
