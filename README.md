brotex
======

Attempt to implement the core functionality of vortex using bro-code

Tested with Bro 2.3 on SecurityOnion

Look at exec-bro.sh for an example of how to exec bro with these scripts.

```
ckane@cyberdef-so:~/bro-stream-test$ sudo bro -i eth1 -b -e 'redef Conn::extract_folder = "/nsm/sensor_data/cyberdef-so-eth1/brotex/"; redef Conn::stream_ext = ".smtp"' ./local.bro 2> stderr.log
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39844-192.168.6.1:25_CaP9x4U9dqufXRWJc_orig.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39844-192.168.6.1:25_CaP9x4U9dqufXRWJc_resp.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39845-192.168.6.1:25_CbQGo41m9TzqvO7ARf_orig.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39845-192.168.6.1:25_CbQGo41m9TzqvO7ARf_resp.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39846-192.168.6.1:25_CENHWptqKBXh8F36b_orig.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39846-192.168.6.1:25_CENHWptqKBXh8F36b_resp.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39847-192.168.6.1:25_C5QHMRcv9ZBWHH3ak_orig.smtp
/nsm/sensor_data/cyberdef-so-eth1/brotex/stream_192.168.6.2:39847-192.168.6.1:25_C5QHMRcv9ZBWHH3ak_resp.smtp
```
