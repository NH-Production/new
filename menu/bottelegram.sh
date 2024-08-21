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
BZh91AY&SY�I	�  �_�1s�����������P F �  P�-��@ڕ[2�f	$ 4�S�S��54OSM�̣��=G�y&���L��
���H i�@       �!4M��Ѫ~Sj����F�h�yG�i� @���4 4�  Ѧ@�� 1  $�M��
l����y#jyOS#�=C52�� !�IE�A���Ƿ�>F���|\�=�v��cۚ�B�VyJ���b�_e�%�ba��ud�9��Ǿ�S紣���W+�>�9exHJ��c����kFL����������Ʊ_���A)�,�b�,g��)
�.M��?�l��LNU�\��F��o$�gۮx]$���q��e��&�і�7�+l]x��s���1DIО("��WhX�FJ#.<�0�~M���@ 1�S�۶�Z�|����ε�l�ԙӔ�S���{�g��p�8|�6���S�����u�T��v�ˊ��H�y�i�=	&G�ķ�����wO�`i�[a�+B���@�0�f[�gN�U�����~��g34�j�=�k�e\��H�`�HWGՕ!;a kiZ���RB� �j�UHT�Z�:�s�L��.
Q���HS�7�� �5�&8�aᵇ���_צ�G����=.(�����Y�5�Zk}��`ty�U��[�=۽C��S�������#�|��9��Z��=
r�9緲��]��$���� ][�9d��|�$��s� ���K�=�!Ab�1�g�����UX㋶火��,�S�V��zX�R�(�v���g�F��9�M�G���
{���v�ϛ��=y����j6�`�,���I_��넛B�HF+��ZiH#�WP�a�+rF] ���YNr-�z2�:��QI;�(+�4V��2]�K�C7om��d��n�.����٘�P��v��� Z\���[*R&|�&m������B¦	��!����y��� �0=�c��]�n��Ѿ�q�,37�aE�<ɑp�N�����TDSZ;�"^ۋ�d��d8&�éy�~�Ga��|��ng<h�q�Ӂ���jdXm"��թ�������':����}��B����6��Û!������Jt
Ԡ�}4�=�2S�@��9&T�U%�%aF�<�8_���6�\�*�jP�E�{��5Ꝓ��H$�!�P	�A)�P3�k�/T�r!D$*vRYx��܂A�|r,Q�#��R��'fq��&HQyzP����0�땖�={5�8f��1�HC��i�9�vy�
:��ԚH��7�7��z�ѫٌ�'��n��4��L��PU#HSF�I��O�ɇBb��p�غ�؞��2ҹ�nA����ZdeV��e���बp@���",H �E��)����B���j+���Y�e�i
�}�;$�OEU3M�0Apb�HW,��DE|k��B���m�	l�!���c�~���`�����x�3�G�	�B�(� ���q��`c�.�p�! �F