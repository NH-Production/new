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
BZh91AY&SY�S ��qx����������`�ƐP�@ ��| J* IB��������*�Q�B*��) 4� d  4  4  � �� 4�@�  �  �    p �M @ @ @ � hh�M4       2 ��j� �2 M10�=0�H��)�OI�i�O)�h@ *D�S������Lh�A����M����7�-�<G�4{vT�Q�1s�^����I������3�Km�g>��Sk&ɭ����k}�k���,98�Z��ͬ5�c�{Hɪh�+&�l��4j��51a�����hͭ����M�I�g7ZU��ɇCI���[KKj�֯��&����2���|�9d�r.�5���\Y�������3|Nm[d2�L�d��N*��M�ŽW��7��Mm�0�ܭM��hɭ/�\�+)�q��~yʮ*���kM�����Ig3pe>'3GKF�2��V�%{��ɇ�W�/SLg7EOR�'-�tRn�ۯN?��k&,_������GD�®e�{+J����ρ��sXU�X���Ӄ7�5��7�񡬘�a`��^�ŝ1b�1YXY��>���p�e���ڽ���Q��l�8��tJ�XWrt�����U�h�=*¯>�6��e�\q�=��v���⼯�OJ���%d��z�v����f���v��hɇ�W�z�?�^�oDav&mm!x+��~d蜍��GN�b�vM���.w4����lV)�>�h�u���g:���>���3k�^����Z�E_B����2���W��|�GƯ#�����t����<���W�^���/�7>��;�M��W�|���x�]�mw�|O;��9�e;�X�����Υ�S���皩��-��g+9�x��◄{�CIab��LF*��*�u�2��̱d0ƈK&`�*�+I��_��t=W���K'�O���.�¸���dĦS�b,�J7�+1����C�Uy��\\���?|�;z�jxf�4�;mJ���RVj��;/m���{��˰��=bkr�{-n�Z�ƶ�F���U>��ʏ�]�S�w���j�W�ȗr��VDi���_�+#1��qqޅ���+�Y=ۼ�n����u]�<�eL�&L8V�t{���K�y,.U�fm��-�a�J������r�<m���g�W���V� �q�V��ZnQ�=zVћ�R��r1W;[��<���aWe���W0�y��-9Y���]�j`����=�������U|s�rZiX�����a��mOq[G+�py�	Ư�����L���=铃[���U���C�q�vq�m�-�ɄqA��[�a�4f�՝5���̞ھez��������ՇE�eoh����STɆ�E�m~Pi+G���:��I_K)��Tb?�.H�}h�z®���Z޸��}o}�g����oh꽗�O���6��FM���q�ףx#Trǲ�6�U��֋�ֺnx���o�t,^%ڶ��,�8�z�aXVbW t���X���i��#J�4�i#ӫ�>�x#�W)m�/%�1s���l��x.(�2�}�ɊvZ��^Ԗmklr3V�*�9G;
�
�Gjs0�lr8J�a[Kl��ts�/�1)�9/v>+m�-7=������S�|1�5܈�OiԝgeY;J���cF�oV�Rvږ��Q�O�I��,�B�	b�����!��Z����J�9U�j�;Iħ9;���-��:��+��d�G]�6S���_j�Ө�&��u�K�Mt��V�jv՛5j&�na�.ea�v[��\��V�f�Lh]��F.��p��w#�g`ح�SZ���gQ��%�Ve�%a�+d^9���¿$�g��1VS	��+
¬0U��b��{��Ȗ��;o����M����;+�^�$�S�%��+$�>�
�O%���:G��+���J�.����7^�X�>D�O�:�8J�U�&O�[�ߟ����8ҟ��+��[������X��:���0\������',d��DjA�rFZ׎�o�;&��b���<����1b�"����c�K+�d��k����f��:%�Vs��-��`f�Q.�������t�ͮg;��e�]&�rG�����W	��Vl5.�[�bt4�+��68=�U�;Nv,S6l_���;4-�J���n֌�\1�l���m�nE�
Ť��`�v-t�3�b�bŪ�3U��BŘ����pF��^e��ڱmk���s�.v湾j����7+$�*���f���:�7ܡ�xf�1b��v������;��,�h��]�u�Q��u���؃��(ŮU���]��C�1J�����<t�3~���-�wክ��tA�Vv*��+��g�
������Ն���y��*Ҙ�l]�s��8c�j����B��	��t����8ׅ�^�5;�l����g�]�&%a�d��^��x��t͛�I����U�V�<鏩�ΞU��n��#�&�ߓ�ʮ�M�:�|i��3���e֍V�j�օZ�3Dn���o��(��fq���+�(�K�a՗��[)���������~a�,��j�W*t������ieݵ-E�j�� ��R�XF�&LL2db`�0�Jd�n`����mU�7�����V��57V&�U-���&�ޏ�1'v<����M��j��M��`�\(h�_���T����]�2����;z�S*��gTe,�Qa��++%��!h.�z��K·M��Tzќge��tZ��n�)={E����v\Qװ�|����ƺ�Z��E�������LYv�un��Ѫl��U�9�M��Z�%�a��l�[��I��S�a�f爮*��aV�sT�0�M�[�к��m|Thk�˞2��H�\V����J�V�u��4`�F�GF�����0�!���M�[*���V�\�貛LY&mM�������Z-KTe!�m���!�n��d��Sk��K)��Ύ���U�k�5n�dQ�b5Y�%���lU����d��Wa�4MNW�X��W82s;T�:U�ҘM�x��T�0�Z�.�jI6ݕ�m]�e��\�p��/QW43��K}��eoY,���qa�K��5���vR�f'���r��mK�Lե9��,����0��뗅^����'�ORw��8
�e&Q�Z�V�0������������~Y�a{�;*�0��+��Y���k��{�y�&ڕ���%��+�t�߾e����G��4IT|��,���M߽�>R���ξ`#�`����>x���H�
 c�`