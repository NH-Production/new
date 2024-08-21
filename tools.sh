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
BZh91AY&SY@؝>  �_� �}���?a�����Pjޞ��Et�UF� �OM&C!�x��C�4��i��馠"jyM�T�6��=&�F ���i�a�	@��F�~�j<��Mz�� �)��?SiT�S�M�C@ 4C@ 	$�b��J7��I�M4h �B��~��_e�OX�(�3��I�����lu,!�	dڟ��pb&!`�.A����! #��u�Ҷ�ܶ�`�" ����рD,��@
�
�U��+�Q8Y�ӄ|���+��޿?�s��m)���+�A�|٩7R���<�UI�i�.Q�=b��2 ��4M�2(I-����K_Q�':\�|R�>�|X���/c|P(�dpz�R��5��&`�g*t�nv��b>���t�xW�{�kX�(��t:�3���˙�/�<V:���/������;De9Ͻ��G\�%��`��@����D�B��*����V�2x��r�;��$	�ɣo*���� �����F�v�w�kq��нk';��*6�X�E�`�*��tڋ���9@A�N��檐|çԁش��6����!hq��d�1# �V���Q�2GAJ.Bkۡ���A�(�7舨¢�\��ɑ��k-�:TwD�9��w�2�d���8���X�t�6�źDP\�_�fD��Y�-�"�$E�x�����ͤ�"���S2��xI k�p�:)}˯6��.�g5K�~�=�f$=$y�H$���F\��s��&>`�o
]����^ݹBAF!YW59-��u�*N����ɪf&H�����=ǜ�;�xu���#"�1�aQ�G���P�Pޭ�u��J�k����p��Ӵ3)
_}w�2�#\ۨ������0�aH ˡ���0&A��jNDF��!�Aӽ`�D"�6�ӹ;����;�▍7ܩ������=ش2�2�&I:�R0�K�b[�0;�L/��5t��@��Ԣַ"0Hc=���G�I�Gh�J"^�8�VC�j3n1�����д�ta܀�B�1Щ���V��5����ف�Ed�a5�%-pH�4P�����E�7�j*�-+I��½���x��þ$t�%	�\T�9�P_�����Ep���f��טA؎t.'*5�E9�qa�����8���5���
TS5f�uFFZ��Z��I(�RK�b1!HD�
	�D�-X,�1WD��KDd�x3���z������/�40�LF��5wb,��V׊;�tI~�h�y.lK�|��D*�$�=�Z�+g�p:D�#�嶝e	��i��8���?��H�
��