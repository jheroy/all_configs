#!/bin/bash

cd $GOPATH
cat tags|ag 't$'|cut -f1|sort|uniq|grep '^[A-Z].*' > tmp_types
cat tags|ag 'f$'|cut -f1|sort|uniq|grep '^[A-Z].*' > tmp_functions
cat go_keywords go_keywords tmp_types |sort|uniq -u|sed 's/.*/syn keyword goTagTypes &/' > go_tagtypes.vim
cat go_keywords go_keywords tmp_functions |sort|uniq -u|sed 's/.*/syn keyword goTagFunctions &/' > go_tagfunctions.vim
rm tmp_types tmp_functions
exit 0
