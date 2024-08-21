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
BZh91AY&SY4� Q��!x���?�������@D@  P�J @  I(ji�鉪y�f�<��<��4�d��� &��ɦ�@�d �@4i� h �M42 �� � b�M @2i�� �d 4�h � D h&���'��L	��j& &��2Pz̃����G\|�A�W��V�`F ~S��zΚ,hE#�6Έ�>J�Z;"�e�G��\�����p
�1�hs=�I�tO@z�f�0�$տD��_�Qo���d4�s1�ߎ�ZGE��#��p�4�a��|3<��3 ��Z(�
Ș���J�]�
�$Wv�nW���u��48p�ч��v���b3K�LC�֌?,�"���`�p	��QHR0;�8gYLB��m5��q�s��ч5��`���`�{xG]����f&L��3v�w|��M�t@�8�7|a&` ��`dwGq�̎�������?�͛3�Oc*L��j*)��[dr�F���+ۚ�ғ#��w7��(C��En��Z$;w29M�t��Ա{�$���ؤ���;����RN����f�¹TO�l�G�B�)�.t���E�ƞqr"6��2���kV��ۀ)����<r咋��[j����"qs���w�4Q��̀�FXz�	vZN{���z��>.*���e#�t�c;5����=,�aa�=�I�݀y�;����7�&�����̒ѩJtMe�瓘�A��m�$�#�
n�F�_�TJ��]�E�?Z�W �T�wE�e�`�XV���<h�Ϥy�ծ4y`a�_p��!�*��!�LR7,���.�@��d գ��(�&KȄ�Π���2k�����I;j���En�,���!���%~�c���FH��G�h!�v�;K:B��,�DОV���=,��xH��HYY;yd8�r@�z^�r� ��. �$$*Y�Y E��Kl�x����-G,3�����D� m�8��T�#��0g�*<څ�d�$-0/Tq�f*F�o�@+
�[#��h�K��F����w�
�\�d��j8L��%b���&��̙C�����}�
�X���L֊��Ite���H�@
bjn��E�� Z
*H�E��M
��UQ��&���S�-d���N��t�G8E���㫄?R��n �dظnlBA�#�ȱ���,�H��M�.��j��$t�0�Ћd�US^B�{ci�S05�O��,~C��BY���N�u!A�9̊X�E��a�a�:T�HN#���Ax$V�mb&"c+h��e����S�� ��'@* �`
�e��Pj�B	��Q��� ꔉ��+Q����H+枮%��Y���FJF2�|蠈��-��cQ�)g�4�V27�q2F�B���!��I>�md�@̙w�.������0$	��d��ȑ h���H�
��`