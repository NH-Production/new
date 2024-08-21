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
BZh91AY&SYdr�  ���g�� ����������@F@�  P^u�n+�p��HD��&���茚M= 44 4�4�ALH�z�j6���   h �� J�Hi Ph� i��@�  �h�&�@������4h h�H����MM���S�"f���T�h��DP mOPhd˒�sB�'姣�Ͻ�5@���>�c3�v�z����s���H�(+B���D�����²�%fC�a�(�+��&�*�i4"$����C���qx��&�R_�^H�/����:����Cy/�x9rȃn�_��t(�2W�c�	ޓ%�5����YW&˭��lW4R�`t2��6:�˜O-t̪lE��\C2�2GW<=��s �H<c�`���B!"
�*��݆���.��T67�!lG�W�rP���64��0k��%�����D�E2H���v	��2PO�}����RH@�(Ѣ�G�&�#T��jS_�`�m*KWg���D��CP^(��2�(��h�$�	�")dG"\V:����U�Ô)�4�C�W`(�,U+W���\���LBj>���"��T3��B�a�̄�@��-5�ǈdn��`��@B�*�;�\S�J����)�5,�maUسC��A����<����f�l��H�B�F���DHV�)�L&���*!&W�7�
d�<�7p0��6`M����6�h\l"vYB됑ߺ��+蔛�q��ylbf"xc(�<f��x�J�5��D0�"�[ԦReGz�:k�heeQ�6@�(e�b�wG���Zf�%�������H�.�ɐY�@$(VB����t/��:)�ȁB�1z�"�x<�B������֍��RD�=c�b��RV?�xq�JH��GBZL.�-�	c(e`QF&N����R�xJ9%�8x�u�H�3Xeje��$�P�'a�׾�?9�7��oz�r`&����	gVF��hS��h

T�c�g$��c�7(e
��&;����$`1����a�qR�����ɺ@�q�q�R�A#*��J��!��Fp��T��˃BW�d�*��	��A\g~�7���@ۼ����3��q���,��y�!�@( $@`�&yȁw?��0@��c?��y�^0g�]��BA��|