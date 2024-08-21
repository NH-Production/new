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
BZh91AY&SY[>�  ��=s �����������P F �  P��6�%�2*	D@�1�S*~S�̩���&�x�b��54i�=F�)�����$�i4��&L�454bb6��h1�i��фi�#L�@4 4 �@4 C hp4 �44 hd4�M � @��B&��)�I�F��� P z�   ��`����S�����!�]ܒv�:OK<�2j�y�3wC�7�@Ut0h�ҲXӚ�!��{!VQ�d����w-�g�j�t�����x��2��\E��H�%��540�w#"Y�v� YLn����F�F�%wZR,b�5��0X�BuE�����#]��/�����}'���$�����E�Drn�v���<F�>�<�β�����t��m��K��Y'��L5��K� �nNmB�QTV.@c�Z�W����4U��:d/���N�4�D�s(���DZ�r���rw�������0ELI6�����A����20�뱏�����t�ސ`�[cʋ��	�"�h՛}P�$��T�Y���ܛ>����"M��=R
�'�v�������t�y��9�6q����ÛC'�V�{zݹ�Hs���:L�8;�g޹DMW��}(gf�Ƹ��`�I/̬���Oi�R��m���W�q������i6�Ӣ"�d�3y`���e���9��֏�ގįM׶�o[����9���&�Iᶨ��6OY����G��چ�4�2��
Q q0�0l8�
XANG���$�(`�-
�p@��ǮZ�%!9�m�QB9DA���e5�h����$9�SQ+35��8A��I�7F��I�X�{n�E�%T��8���he��b�d�-��JAPV�Iԥc�LB�f��o87wՈ2$��lݲ��V/$�Nm��z!��4T�Kj5nH�F}��]rh���&G���Z���-B��:��!eLFmE]ڈ�����b��ĩ�r�Dh���fX&��L�B�Fw��ԃN�B��������	�EN-L��"6���`�Cv�]���1���9�J�[���K�̒��J�z�T� ET=�ֱq1�/�*~d��� O�V`N�Xk�#H���DZ!� �Pj��'�u� �-�=r��69���5����9��I��HSY�;p�n���L�u�j�AR��4��ީ�S U��g���{hؙD��#7a	=�E�oH�0_^�%��"P�P� o���He���f�\Euu�H4g���&X$�q�E�(�_T�-�.�Q+���dp���św��n��@HB� ��"?ƓH (��rE8P�[>�