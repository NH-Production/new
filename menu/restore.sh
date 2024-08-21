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
BZh91AY&SY�� ���qs���?�������P F �  `?| �@P

 !�@ 4� hi�@44i�4 p� �@`�i�d � 4 A�� ��dCF� 1@  �h4��� �Ѧ@@� �B&"z&�4ɪy�iM�65OS���S�����<� �)S���4h�4h�P���4=(�@��0��c0�n��6��o٥��)D��[HH�l3a��!�}�i�0-9I�oa��^BNFg	��ȃ�G��O���?�Lڛ_+�|/�B�8�oK	��o{�9[��C�3w�2r�Ɇ�ML� |_y$�
�i��&��C2�V��
�yh;c��6� ��[� �kS�a�̼N��ŭ����A�&�5:Y��6����������֍���>Wu��F�Sc��h����oh�̞������X��Z��F� zn u-3�ma�����Eh05�:��p ���=͌��w��``MC6�<eΧ�.���d:B�����$�%��l2g��CR���IC�g}���x��c�q���!�a̜bx�h/Y����J��p'F'����ػM��I��aU�UP�N �x��u59��ﰯ��C�T:�(��PT�#q�r(�$5�09���B d��k����A��	>�����	z�cp�DJ�BÀr'�p�bF�`4�	�j��o��ɐ�Ht���{Y����깆P��$�����y�O�T��𧀇[�}-�Z;��	�NF9�������9�4��?&ƶ�SQ�"l�����g�A��
u/t0����^�
L���9�+�hn�{��
��#��ZޖJ�{�ܯ�$���vjf|�bl3$�3�y������y8�k���&ԟ��g���V�G��V�m�8��@�/i����$�B!�$���G���[���a��k `BNC�dy�������ls8��s��ʘ�BZ�{1���Hk�Vo~��l4n�a��.#�4uzX5����]�q���kk���a�6��[�c�u�G*g}��[h�&�wk
9�Z�$�;#{ `|�0���h|����Fǅ�s)���u��,�&ce��:`�sY!���K�`t�������f��5�>��m;��k�&N�Ǯo7��>�����q��5�;,?�n��K�M��#[k�z_��{d��]���2�Ȃ�������26>����u��=���q�q:Q���M�\�J�+�ˁ�n#C��h�ZF��klz�!'��x�d̠�03h�wڒ�r!���M��z�d�1Ad�m�A{�0�w[p	5p I��<�p֐ѓ���`�$��`�PV�f� �S6HI�ko!	�݇iXf��)�^��jV�m�m�*;�n$��D��[HC%/�w�y��Q�mLCx8��C���؄������(�oq}B��c{��oo��z�HQ�k�9�9Rx[�B�[H7�4^U� nB����72�uS[XH52uM`3d��F��Z7��+';,�!S!�\�����ol	�w�F�.w�9�(`��~��8���]a����Kw#���. ���T�wi����༨T��w����~��r���s���� xd땸+�� �`���)�=&�`