#!/bin/bash

sftp user@server << EOF
cd uploadfolder
put file1
put file2
bye
EOF

