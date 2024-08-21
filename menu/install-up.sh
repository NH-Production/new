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
BZh91AY&SYߘW�  V�A�@ ���������   @t�ڵ	����z��mOQ����@�z� I&BS�U=2�����!荤dbi�i�2dшi����4ɈMi�0�$�T�(�4h 4�h4 4C�sT��ef�wER|.�W�5Lɿ��4w�"<R፲F����[�:$�E�B��X!Ŧ?�Fv�h1fq�܁F�ƶ���yJP�Q��%
,*�r�0]0y<�Bs>�f:��yTrq
C�����(��z�N����{�[���Z�Y5buj��^��ޤh�r�iYv���B�u`�Qft��	{�}id�M^ئ�bgH�����O�y���TBW��TJ�G�H�A�Tc����F��+X��`��'�ԫeUM��j%��H��X)3��ȱ��∑�x���v߿\�_��F¯9|�m�1�$b�Q|�	Ie"-��9�Z�XdNR��.����-	«0�Vnsxk��z~c���bބZ��c2��������"�"�N-�p�u��$�E@b�����	�J�NTz�n#YIO
�/�:���N�İ*݂�j���K
�q�i��M�������'#K�C8�/G�]-�K�@B1��%�$a�hL�a�Ŗ=H�� T&Ct����rE8P�ߘW�