name = "Potatso GFWLIST Configuration"
author = "ray"
email = "henrayluo@gmail.com"
website = "http://henray.site"
description = "Ray's GFWLIST Potatso 2 PCF config."

# Profile
[PROFILE.sample]
name = "Ray"
dns = [
  "8.8.8.8",
  "223.5.5.5"
]
defaultRoute = "PROXY"
proxy = "bwg_ssr"
rulesets = [
    "STATIC",
    "GFWLIST"
]

[PROXY.bwg_ssr]
type = "SHADOWSOCKSR"
host = "yourssr.host.com"
port = ****
encryption = "aes-256-cfb"
password = "******"
protocol = "origin"
protocolParam = ""
obfs = "http_post"
obfsParam = "******"
remark = "BWG HOST"

[RULESET.STATIC]
name = "STATIC Rules"
rules = [
    "IP-CIDR, 192.168.0.0/16, DIRECT",
    "IP-CIDR, 10.0.0.0/8, DIRECT",
    "IP-CIDR, 172.16.0.0/12, DIRECT",
    "IP-CIDR, 127.0.0.0/8, DIRECT",
    "IP-CIDR, 91.108.56.0/22, PROXY",
    "IP-CIDR, 91.108.4.0/22, PROXY",
    "IP-CIDR, 109.239.140.0/24, PROXY",
    "IP-CIDR, 149.154.160.0/20, PROXY",
    "IP-CIDR, 31.13.82.0/24, PROXY",

    "DOMAIN-SUFFIX, cn, DIRECT",
    "DOMAIN-SUFFIX, appldnld.apple.com, DIRECT",
    "DOMAIN-SUFFIX, adcdownload.apple.com, DIRECT",
    "DOMAIN-SUFFIX, swcdn.apple.com, DIRECT",
    "DOMAIN-SUFFIX, phobos.apple.com, DIRECT",
    "DOMAIN-SUFFIX, ls.apple.com, DIRECT",

    "DOMAIN-SUFFIX, icloud-analysis.com, REJECT",
    "DOMAIN-SUFFIX, sax.sina.cn, REJECT",
    "DOMAIN-SUFFIX, tanx.com, REJECT",
    "DOMAIN-SUFFIX, ads.genieessp.com, REJECT",
    "DOMAIN-SUFFIX, ad.unimhk.com, REJECT",
    "DOMAIN-SUFFIX, cpro.baidustatic.com, REJECT",
    "DOMAIN-SUFFIX, m.simaba.taobao.com, REJECT",
    "DOMAIN-SUFFIX, ads.yahoo.com, REJECT",
    "DOMAIN-SUFFIX, ib.adnxs.com, REJECT",
    "DOMAIN-SUFFIX, ads.rayjump.com, REJECT",
    "DOMAIN-MATCH, umeng.co, REJECT",
    "DOMAIN-MATCH, umtrack.co, REJECT",

    "DOMAIN-SUFFIX, 126.net, DIRECT",
    "DOMAIN-SUFFIX, 163.com, DIRECT",
    "DOMAIN-SUFFIX, alicdn.com, DIRECT",
    "DOMAIN-SUFFIX, amap.com, DIRECT",
    "DOMAIN-SUFFIX, bdimg.com, DIRECT",
    "DOMAIN-SUFFIX, bdstatic.com, DIRECT",
    "DOMAIN-SUFFIX, cnbeta.com, DIRECT",
    "DOMAIN-SUFFIX, cnzz.com, DIRECT",
    "DOMAIN-SUFFIX, douban.com, DIRECT",
    "DOMAIN-SUFFIX, gtimg.com, DIRECT",
    "DOMAIN-SUFFIX, hao123.com, DIRECT",
    "DOMAIN-SUFFIX, haosou.com, DIRECT",
    "DOMAIN-SUFFIX, ifeng.com, DIRECT",
    "DOMAIN-SUFFIX, iqiyi.com, DIRECT",
    "DOMAIN-SUFFIX, jd.com, DIRECT",
    "DOMAIN-SUFFIX, netease.com, DIRECT",
    "DOMAIN-SUFFIX, qhimg.com, DIRECT",
    "DOMAIN-SUFFIX, qq.com, DIRECT",
    "DOMAIN-SUFFIX, sogou.com, DIRECT",
    "DOMAIN-SUFFIX, sohu.com, DIRECT",
    "DOMAIN-SUFFIX, soso.com, DIRECT",
    "DOMAIN-SUFFIX, suning.com, DIRECT",
    "DOMAIN-SUFFIX, tmall.com, DIRECT",
    "DOMAIN-SUFFIX, tudou.com, DIRECT",
    "DOMAIN-SUFFIX, weibo.com, DIRECT",
    "DOMAIN-SUFFIX, youku.com, DIRECT",
    "DOMAIN-SUFFIX, xunlei.com, DIRECT",
    "DOMAIN-SUFFIX, zhihu.com, DIRECT",

    "DOMAIN-MATCH, google, PROXY",
    "DOMAIN-MATCH, facebook, PROXY",
    "DOMAIN-MATCH, blogspot, PROXY",
    "DOMAIN-SUFFIX, m.me, PROXY"
]

[RULESET.GFWLIST]
name = "GFWLIST Rules"
rules = [
__RULE__
]
