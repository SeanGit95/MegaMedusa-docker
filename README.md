# MegaMedusa Machine Layer-7 DDoS Tool v3.2 (Dockerized)

This is a Dockerized version of the MegaMedusa Layer-7 DDoS tool forked from the original GitHub repository provided by the RipperSec team. This tool is designed to bypass multiple security layers and perform high-rate HTTP(S) attacks with a zombie botnet army. The Docker deployment simplifies the installation process and allows you to run the tool easily within a containerized environment.

### What is MegaMedusa?
- MegaMedusa is NodeJS DDoS Machine Layer-7 provided by RipperSec Team.

## MegaMedusa V3.2 Main Display:
 ![Main](maindisplay.jpg)

### Features of MegaMedusa v3.2
- UAM Challenges Bypass ✅
- Cloudflare NoSec ✅
- DDoS Guard Bypass ✅
- vShield Website Bypass ✅
- ShieldSquare Captcha Bypass ✅
- RPS Power Improvement and smooth operation.
- Auto Restart if RAM usage exceeds 80%.
- Maximum DDoS Hold: 100,000K seconds.

For more information about MegaMedusa's capabilities, see this [blog post by Radware](https://www.radware.com/blog/security/2024/08/megamedusa-rippersec-public-web-ddos-attack-tool/).

### News About MegaMedusa :
- https://www.radware.com/blog/security/2024/08/megamedusa-rippersec-public-web-ddos-attack-tool/

## Dockerized Version
This version of MegaMedusa has been Dockerized for easier deployment and execution. 
You no longer need to manually install dependencies on your host machine.

### Installation
1. Make sure Docker is installed on your system
2. Pull the Docker image from Docker Hub:
```
docker pull seanr95/megamedusa:3.2
```

### Usage
Run the following command to execure the tool:
```
docker run -d --name medusa1 seanr95/megamedusa bash -c "python3 scrape.py && node MegaMedusa.js https://example.com 500 100 30 /app/proxy.txt"
```
#### Breakdown of parameters:
- https://example.com: The target URL.
- 500: Attack duration in seconds.
- 100: Requests per second (RPS).
- 30: Number of threads.
- /app/proxy.txt: The path to the proxy list inside the container.

The python3 scrape.py command scrapes the proxy list before running the attack.

### Viewing Logs
To see the output and logs of the attack:
```
docekr logs -f medusa1
```
This will follow the logs in real-time, allowing you to monitor the progress of the attack.

### Minimum Device Specifications :
- 2GB Ram.
- 2 Core.
- Minimum 30mbps Internet Speed
