import requests

url_get_ip = "https://api.ipify.org?format=json"
url_get_reg = "http://ip-api.com/json/"
def ip_region(url_get_ip, url_get_reg):
    try:
        response_ip = requests.get(url_get_ip)
        if response_ip.status_code == 200:
            ip = response_ip.json()["ip"]
            response_reg = requests.get(url_get_reg + ip)
            if response_reg.status_code == 200:
                region = response_reg.json()["region"]
                return ip, region
            else: print(f"Site {url_get_reg} returned error")
        else: print(f"Site {url_get_ip} returned error")
    except Exception as e:
        print(e)

ip, region = ip_region(url_get_ip, url_get_reg)
print(f'IP: {ip}\nREGION: {region}')