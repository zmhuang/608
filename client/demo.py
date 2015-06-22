#!/usr/bin/python
# -*- coding: utf-8 -*-
#
#

import time
import pyKairosDB
import datetime

# 连接数据库
conn = pyKairosDB.connect('127.0.0.1', '8080')
metric_name = 'deformation'
metrics = []

# 提交测量值 deformation/变形
conn.write_one_metric(metric_name, time.time(), 11.2, {'bridgeID':1, 'pointID':1})

# 查询过去 24 小时产生的数据
result=conn.read_relative([metric_name], start_time=(1, 'days'))
print result
print "sample_size=",result['queries'][0]['sample_size']
print "samples=",result['queries'][0]['results'][0]['values']
for i in result['queries'][0]['results'][0]['values']:
    print i[0],',',i[1]
# 测量值大于 5.0 的
for i in result['queries'][0]['results'][0]['values']:
    if i[1] > 5.0:
        print i

# 关闭，退出
result = None
conn = None
