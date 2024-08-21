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
BZh91AY&SY_�n� ���m}����������PF@�  `���;w']:�q�M.칥�H�h���T�2(�aF��2�hdi�  @4� �  h  ���    F@   @ F�@    22  �"���2l���6��4 44�� �    "�hOЛH�AF�z��5zFi3Q�i�=OP M4$M F���&S�&�i��3�=#���<�����DƙMBI�)��G�5����Z�ee�شCn\aR�;䒲
���ME�$)d�+GVP,L��"���gߨ�42>�ƻd\[�R���np7pʏ�b=�g����Ep�,_�lm�����dY�ex��5��2�9X�%�2��j�h�.�Jmm�$���ϟ*	~̔R�>S's�Q0n�7� �Qb�D	�����a������9�d�pUU�IV�%�i!��IS���yN��	@z��`~;R�����X������o&dV�֬��D�I!�h���Q�bj��o9z>���#�XSy����&D�WVJ%	2܊�»6���d�-�\ Ѣ�^Ik��	!Fpi��3'�|��V#
��#��+�����[��.-Y�u��>WYY�̲
��\H���.ː�k/�y�:v�7�R���l+aVb����8����������pW/�I*[�s�g���ɞ/K��ti`5Z1(5Ll+q�wL�g�շsbu!�.�C�γ;�+��|����*�W�gR_��4w�+m1|��$d9�	�h��{�T*�w�w�lX�L���;6D��0cCY��F����O�ӕ@v1#�D$��F3	e�Tċ�9�cHi���	F{��ԗ� ;���N*�zŏ<�'I\�99C@W7b(��D�B���BR�P���b�{�F,,�G��y���ë�1�Ste��kz������4�2���[�M�ؕ�Y�>iL՟�͕�^�L��cL��/c���&s}о��?B6��@�a�RI.�����B<P��(ϗ�(�ے�O��N�4�����]�"sS��P�N	�fō�'��m$�m](�M�ۻ��Oj�O2�{��������rJ�4�<E��m��w��1	h��8�#+�̮�U)��/w6�Oq����J	9DDDM_���>f��hH�����(��f� Bɽ&jݭϪ����y|%�dR�%{-��d��aAY������FX�Lh���*|b.Г���)��G��������#ry�|�K~jӡ�A�D�	�2gK�)ܜ�b_���VQX��`C�O�x\+j1/��E7	&��Z�M����q�=�G�_qo����qiRP!�#�`�4��j����)��a&h��1-���Q��7���c1�~��,F*E��[33�8�b%<���%d*W%�䥻j$/+���s��&s��z�!�F��1!�t�<Ev[
����@�P�G�\�Y�1�}�S�
OhZ�u��Y ۊ��LA#>�3g�@��������U�[���,>�e�4����g<��l��E�8�����-�c��b0M��$8q�N��K+��>��D��b��XQq�4���,6�����.��E9!��J�?I�/�Z�U�i�#��wƍ~YJ?�M�p��@Y����z�^��/9Z]�bsV��:�ؿ��v��2�i��v!�Ihe�D�9��jG����K���s"Ìr���b�W �Q��8p�z���dN�@@o`��r��H��C)�;��t�y2&�A��H���@�����Fv��MS�`Ro��,LbB�f��*��/=�g��7ŉ)���ִ�����Zz`�♱���ۊJq�nZoΣQR�
7oBKk�\
�m%C�0��)^x"�P�*�*��1qYIۂ0���3�xR!BX!�=����؀�y�g���PR=)߁����m
gD�hh8*�a����@�X�!]�A�a"�����T�5hKQp�,m��o��K�T�����9 �vv��aȃ�XZA�{��)�;Zl�V�h�A���A0� �R%oF�p�Xf4� 6�v�@
v��n��DӉĒ�y7f�F{M}��z84���9�f9�;�a1�4CD"�����C�bg��7j6�����˧R����Y3�PL��SW��L��3i�ٸ6o▞㰞]�̜ù,@X-�e&{s6%� c1��R�Z��R`�ҨAA�hGB�#\�@i3�n�%�%+J��J����Ay��0��,�����E�q�M���I �d���=��g@�&.�G�`W̗p����5hK�A��Q"��C`2��,�U�(�bl�D��y��"jI�hL�+ ��$�T��egE��&���s�� ��b�MT0��t��IP��P�kdV�۴�A���x�r��٥`��yoR�(K���}#\��\�04g�#�z�=Fԍ��M gH�>�6��ԅ�.v'��D����o7���A��E�uu᧰�<A����`5�\�%���l+B���ʄ���!"Ys��5f�9к�y��2�+O@�K�A����)��I�BS:��;Ew�6����j��P�����y&���0�*.5F$�kyY?
���:-�%����ʋ�Ж��m�ފ���c�����I���YT�L��D&]�x���41��H��ahHԘ�0Ki�Axi2�EJ�A�ʥB3&r�8�nv��0PUU�T$�� ��4�1��1����&Z �Q#-CסRJL��9$I��:V#4���^��`�+�2�Q�@�-$��[x���bVL��K�����##}`��αC`+�7#W�g$%C��v��O.:X3J&�`y�i��D���BA�W��&�����ul���A-�Ҋ�Ѵ��+���9���0���1�X7kL3��!CR� ^r"^�T�_��!x���gm=H�$HhAD@=b%�g�oi8<�y T�*2RD
 �y��L��))(�A��� �4 B��ܑN$�۱@