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
BZh91AY&SY�7 ��{�(�����������p�F��  `"o|�
�U�=��{1@m�E��ݍ�^��ZE��t�TI!40
� UTEUH�(�TQ�����T4*mDh�F��������   � C@4�	��2SڛTڏiOP��S@�ڀ�     `               ����d	��L��d��� � �� D�&�&�FS4T�О�?S��O��SO	��l5OS��<��ڀ�COP$A L�i�����dMOF���ɤ��H �@Ph ;�����X}��-[|{\�ȇ�S����W�xy��F�ё� yT���<g<�;�1�Bٲ��L�_Yww���&)V �\�-B���f��q+E�x�ORǸ��Aj�{�k�3݅�_8T����1߄�<{�Ѿ�r�V�D�5_��(5�⁐p/F�8P�&����9����P# 3)��@�XB�gR�(p�~,tވcӚ�9)��^i����z�c�((�H�.p�.ȷ�^M��cl�x���y�M!g��j�o7�%�ͺ�M�XTNb l��A^F��b�����.�P����=e�M�7�j�B�,,�c�xf������dۻF��Fݣ��g��4��ҽ=.%�j�1ꩡ�;�M:l��rc���}�d�ĵ��9ސr4z��E ".C�6�����='D�W��;�0��X}o���#SwhB�tOQ�07�n��c�F�4�w�Y5Kfsvׂ͆��W.�Lp06��Gfr��6:��	�5E��.������5'E�t>��N� ���8 �)�`�vЅȄ���iH�[�-7ђ��'�$	�'�3E�ڂcUK�E�J^�/	��z.3�H4�����2w�S,�K�@!���p����n�X7��$��!�S��b�=�?�T/i���"����(�e�X��A	�y�7$D�xQ�C�6�!1��(Sr!`��Q<cF�,Y�Ҙ��$lSƞ��T��!���O@3������C������>Ƥ턄p���ȥ����"��@��ݠ��R�Go��@����AO��n�z'6������GED������O0l���5QA���t�w�%'١ �&�"""87�`ja �P�h�ڷҾ���[�� e��UU�^���%D��R�ޞǀϽfg��ڄ�y��bd�0����fF�j<�)���ʳ
�s��ɟxi<u��B��;��m������!�n�M�Ba��i�F������|�IQ���)N	��`B�l�6����%��#brVT��)KHʾ#�~��~mL�@`c����"�M��u��zEE"�Ix���Ȫ����׭ԗ
FV��F3��p9%��fи�t�LLN���Y/��M��M'Y�:��3��!��x��笱�{x��ZŽDΗxqnb!���C\�����, 3��> �э!p����!}'�X�����#B�dA�z��Q��*�{�w��RY�eQ����=ٵ�U�ϙt-,Ϻ�b�[	���/Zݪqᗴ���ŰN�2I$�ݲ�@�����yO�M� �z��z6x7V��%���j�1\�1��q�w. �Ou�C��!A��gh�Y:�/,s㟋�y��v;�T��7���_J�5�U�1��S�B�+�8{��� m���������Ϭ�}c��~%�J��A�N;�塣EZN�w{�I��RXMk�50���/?3���@��R�-8��{&_��HA�.G�������ޯd�����%E�0$�	��@��+
�G�Rr���#��~d5m���b�e�l��}���G2ֲUQh�<�����8�a ݓ��r1�[0 �<�o���u�o��%B�
�%�CK4���>�	@�krHg�8�_Q2�טLD�`#aq�(��$���[��؇���^1�dv���~��� ��)+�&���!�8�"][t�S�E�XQ ��2��Ќ0Ǿ\@���&f�
WC��;ϫM�K�0��Hn��ㇿ���Y��i!-�-�}j$[�F[��$��=`��.�G�bh�yFWL-l4u��ƞ��Xea��e��+S��6�*�"WN.�,�!��t��28��N��wy�F� �:"�Y#����a��\�0�2DD��-b�jw�|�n��5\҂�pp�#��-!5�("�D6�=�nKH@)iP��B�~!�¥�ڂ[���a��ʩ�㘀���2��$,�aXځl�qm��.H�C0g�B�@���!Υ����A�u	��x�8@b��.� %�@M㰴8��jAR�9(��A�@�~�#�lI�1q��� �����8��3��������i�\����āB�}�kXK@`�1L��D��Y��K���`V�X��d����u%�v�6���'������eJ$N�$��_�OYϞ�}����;��}(!�C�!����*��>����Ñ?p{B�"w� yDb��@�EF�d$D�#>(��%��'���3H���:N��1+�������'Է�}���ʸ�.no+���Q�K����T�3�c}g�W����	�Q3� Ŭ��Dݠ��ӯ��#�; 6I��H �VɥJ7.�%����PB�Q~��Fy�ϫ�FCi���9!�a�@��_C����h���4y����Q@�8�xd��X<aE#f�>TP�5{�����ja�S�RQ�fD�	A�u��G�{>�P�^�	����N[3S��~���c��+�Urq>����n�&����qx{��F�����ӹّ|Y9`$�����4�3��4�� X񖝙Nl��hL���*�5�N�۔�{�13���W�s��.
f�`Գ���#Q9���/Ue���Z�o�Orc�x�;6�s!�w��u6U3��8hM�P�{��Q�_�~���_uNW�}��i�)A�߉���0~!�6�G,���]�3������]#��&���!�7���=Y&`�|��j��J���O0>��Ieq� O2rR�7�h���{���@O����[ �g��.l�XH� �%�vBc�YAϽ9Ɖ��M�(�&jhCa��(��=�����8ӝ}W��N�8I3��C�3�4�USEWP�un�K������> q��/��4�������*}s��ІBb� ��@�Y���^� T��B�[a� �>� ����Cn �b})}v[B�`�������M���ڎ�A<�L��j���z4*nx[^�tu!s���j��x�I�B|���osh�T�)��
��0�zZ~� |c�i���3,[x%��ֲ�?Y�5�^�n�l�"wC���d��S��B��
���E���s�u��r�9�B�.<���H�b�xm�p�l�0��{|�qǠ-@C�Ӡ+Huu�Ɋ8]E(��fv �+��l��	�J2�y�Ɨڷ�d';���	�s�Ms�G��ژ���i��/�cf�O�-���e�=[�D6��O$���	QE7�@a��
n]�x�]>�^!�v����м�L�U�_�S-�B{�B�sB襀���.UʉARӡ�t�����:� 	�*�����E�r�d���p�x�ro#!ʄ�u`�\{�9��h��S���Ct�44%�ta�M|Q�/�<iTND(*p��{�UJ�5���=&�[���Vc�̽�d#c���-BC�]���S$����n5Hv!�)�����9;T�n��$#8���lE�]��p�*����|�	���-N��1a�jSI�-�H��[hS@���[�'��#�  �t�-�X��.+M�9J�yU� �01���C�z�Z�)A0"�`)�#8E��W��]5������v�`�diT>1�@�#�b��EG�0#$�����ª��l9E?3��%���y���*�����\�U@��<�	�ݤ��fj�M�@� ���!}�,
s#���43���P�:���>������ܗ,CI��u+�9���3|y�vg��!�ǚ)��.G���]�q���y��D#%�f	���`��0���H!)�����BI��zG�؆�ƍ�P)�f����Z�͹9�� HnS�X���mB���ģKc ���^.�ƞ������_
 ?�D1��7�q��a�F����Ur)��<��¥��PH=;ԁ.u�  FH��'o�n� ���iU��A2�f�N�(�`XS35�,�@l��P�d�u�B�X���"���F��,Z8ѯ^���p,��ݏ$ϜH�k���G3s؊����J��S%Q.s&l��4��n�q҆%T��p�F,)b֡@�VR���6��R�b����t�t"�9эG(D,/��}�юAR�xK9� ����(�H4�C@Ј��� ��MJf��B�
E(T;ԯ`1z�S�b�dAG3L>�h�@��5t����tP�3ȇ�K���S�D�%��b'yJ/��7�]ù� v\�?����9�W3��.x5��`(h�ٮ���H�(s	�D��2���=�a�*���
c~�+(��a��n���a
/ Yd	�A�A/ĸ� 9��g�rYQ<��8�"4vF);������%E�%�7)�C4�ةCD�!2nz
��Ch����%�U�ۄhK�����`L�|,Z��{��O�;�S�,$dH��hdt����� @�b\��6���h����P�S��?U3-�MR��:͞v��*�kj@t�O;���x�/�<��'	9W��͠����-����ԧ�P���H+��;��b���{E��9Rs�L	����Tŉg����O-�[]T���4�4�in������q3*au@Y��wPפj���+oG�<�<�S_��ňymh�	���A�� ,lO�ԋ�S��)�%N#��l����"��y`�/j�������8'H%i�t#jݺ��P=��䇕��׭�Kq���K�MV�j��E� #�Ȩ%D 8�/qjv�۶�����؏�x<��&Hn���H͔RfR���b!���g�4iD��>'��oa�hud����Ϝ?�$8���h�/zδ43Kic#��'����֥�Q�`�\���nA��fQ����[Ap\��.'��-�#�d1�mP�@	 *B ��H~��b���(T��pĖ���5*�����`�1,P�J��r���A��R���"�'>qȶ")�$lyA�P5/�a@y��GY�-k-5�歚��!a��1iB/�.�p�Da*jP�E��
T���/�T�;�@>R o��C�"&�� l�F��!_P�jt�����@�d��&ۋtz� [Ju�[��8�G�c
j���<�{�]s�ԯX�P��r���+�`���O�6��yʁ
��I�I ��+Q�^���Mx\iO�OH}`v� |~�OJL��1A�Q��Ч|�P�wB���	T8;6x:���RDLR�r��NB�8�D "K� �
�^X,P���Q�MH��v��ΡP�ʕ��(! ���/ ��Q�mr�D�H����;��NF�y� �+�mR9�P�5�[(�6�R���0�Ts4���`�����XB�7R���La2'�� ��8��s3��>��P�L�Kj�Ôj!hG>�Pu)e�;�S�*�����H@�d�dd	�b<�=�b�H(�!6`2#A�1 [��M������fB�� aӗ���>ǔ*`< YR�����'^O��K�zy�(�\$ztA��3�K�WK�.�<�\	�׈�[�jA�f_L:$�RX{��|rR���4"��u`�)�10 DP� ��D<� e��4'�~��.Щ�X���I�dFB�K�=nU9�ۉ�8�����d>�:G��rCJ-�� oK�����T��`��B'T�hx�����D��5������u��*�JQ�:Hu��BEA�n*���J��+��9y�M'G�N��"�@lEny��:싋 J�@s@�"���<SO�,�w`�B)�%>�L�U�`\i�),�B�@B�Y��aY�!�&!P6OO<0.�l�N8��]��Cu4��� �)oN�#�K��n�he���,�OS�=@�� �; ��M�������B�| !�4!N��v�X}bw	��Jd�A6�*����vw��p o�E4�=��?(�	!"A��
"���w�_���=�hu0�@�d;p�aˬ�n�S�"�{��{���d-��
4�'V`@��P5�������n6���mH��́��l�X��!�0@��C����v���d0����!���0!l����O�?j��?� P"�
��EPP�
�X/H�,�U\A[Z1�I�����>�Oѡ��_���t�2Bq��ƒ@T��X���D����'���"�(H���