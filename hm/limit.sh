#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYь��  �_� ]�A� >���@  �F��#&�F� 4hh�2h4i�0�F��#&�F�������I��hh2����	����(x�c����Y$�~�yT���2�3�Z�Z�Z�x噻H�9��x�:|�|8m�HH���5����a��I�aه3�Z��69��:>�8�:<�?q��h����������]J�v�h���e+^"�\Fa�~�5n�1̷�+-rI$�I$�F¸>C~�1�~7}J�S}�A�Td1�u5Q�|5i%I%I%I;G�~�J��S}��V��B׸Ӎ5;-��3�������O,��1+����$HD|wt+:�֯5(�I?t�'�.,`;�A���J^��[kt��X+�(�ُ�iY�ɮԴ��x��/G��b7ҟ��ܑN$4c+a 