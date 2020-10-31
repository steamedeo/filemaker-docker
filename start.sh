#!/bin/bash
    
fmshelper
sleep 5
/usr/bin/env "/opt/FileMaker/FileMaker Server/HTTPServer/bin/httpdctl" start -d
sleep 5
/bin/bash
