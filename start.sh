#!/bin/bash
# --- myriad mainnet: af4576ee (db = 0) ---
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.af4576ee.conf master > log/crawl.af4576ee.master.out 2>&1 &
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.af4576ee.conf slave > log/crawl.af4576ee.slave.1.out 2>&1 &
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.af4576ee.conf slave > log/crawl.af4576ee.slave.2.out 2>&1 &

/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf master > log/ping.af4576ee.master.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf slave > log/ping.af4576ee.slave.1.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf slave > log/ping.af4576ee.slave.2.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf slave > log/ping.af4576ee.slave.3.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf slave > log/ping.af4576ee.slave.4.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.af4576ee.conf slave > log/ping.af4576ee.slave.5.out 2>&1 &

/usr/bin/nice -n 19 python -u resolve.py conf/resolve.af4576ee.conf > log/resolve.af4576ee.out 2>&1 &

/usr/bin/nice -n 19 python -u export.py conf/export.af4576ee.conf > log/export.af4576ee.out 2>&1 &

/usr/bin/nice -n 19 python -u seeder.py conf/seeder.af4576ee.conf > log/seeder.af4576ee.out 2>&1 &

/usr/bin/nice -n 19 python -u pcap.py conf/pcap.af4576ee.conf > log/pcap.af4576ee.1.out 2>&1 &
/usr/bin/nice -n 19 python -u pcap.py conf/pcap.af4576ee.conf > log/pcap.af4576ee.2.out 2>&1 &
/usr/bin/nice -n 19 python -u pcap.py conf/pcap.af4576ee.conf > log/pcap.af4576ee.3.out 2>&1 &
