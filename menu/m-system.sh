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
BZh91AY&SY^~X[ r����	����������pF@�  `!�����|���u��{�}{�������w}^�Tf�M���}������OV��`��{�y��ol�����࢕[g�]z��UR׭�kt׵�}�{�}�M �e2i�ơ�j=0�(�2
x#SƔ�$�R���  �M4�@"O�Rm&��1�=@z��     �B��ޓ����!�e1�M      I�e&�=Ojm&G���4  P 4  D�'�LM5F�$z�=4�=&��4bbh6��S@ Ѧ��4��FF�OT�����d4h��   2 4�/�Ao�o_�ҏN.��"��=��yIXd�������FW@�Sh������h�ۺ�Ź�^�A
�d����A��.;I��hwpxTQ�B6WH��P(mjƟ�GAV�1KS���b]����n��S���˄�k4�6�&������-����+Z�׳1�Ll\P�)}cD�H�b��p_`E:�(��֝����e��"�Dъ�J$��m�`T�o�t�`_	\Ǡ�B��w��������
~Pdl��<�9N!�^Ƀ���x�E�����։�P�dLTʤ�myqD�2ņP��~��]�7\�2TeG���ϭ���9�M���T�2 1�� �
y,̭��j��M6�a���S4��*ޕ�cH���϶�kt9}8�Y��a��r�����?��	pE�EU^/��V+ʓ����{Q�
.��?_s[��5�G/餣��0�0A9��x;�?=�w��{��O_D��.8.h3Ɇ�0�i1Va��d�오��IR��+?��|��|��쨛��1�q�d:�j��(�. �PT$V0H1� ���	"A �I-�� �]���� y`0`�7�Dl��$+)Z��J���o�q�
�+��|̯��N
�F�G��/h�9g's��G����gQ�x��
�a���N�.]�L[� LI���D"��~��ex��5"6	���p����M�t]An�"|ĊTx^���N�NN\�A�8y�<S>o��r��|Ln^�! o��ل�0P�
h����Z�����N��I	�E��(�q���)ICA�{��A�yO�3QT�eaM\���f��ٙ�L��Р=��p�Z�]��E���>�Vh%�63A��$L�^A�lPOg�$� �N;�ms�ik:�B	����Ie��LFI�P{�iGAނ;�X��iN��
Z��#�:6�4D�=�� �*��d�ن�1B�[.ĥ+RV�)!�յ���P�Ǳ���J[�C���o�A!6�Q3��p�/�N��]�b�!��� ��8���.��]���8��[1t����g����mwF�uv�a�:¹&��V+���挻�/+�2᫃_xE���0bL�9&���ێ�}
S��v���y3V-%ioq�0�GRѱQ�TΉ�n�eɡV�#a���iQ_p2ᶖ��k˪�-#�i�8'6�o�S�ěȕ�x,�ѯ�\58"�騡sWS :��G-Glߐ����e��#i��h}���\؎&i�5�e�6'ZIj���������g Z�.�,+7^9�J�eyq]�W.�O��ʻƆ�w0�>jT�~	��ޮ�H��A:���3񝒗���#�i<����Ѧx���c� t��|���Q�+�&G� �+	?O�����<p���`����)(�~H��N]��v��8����A��͖I= �/�t��M��X��/����EU���4͇��.<�,O[��K�{w�n!�G��{s�P'Nįe�<<8�i��s��H>�h̼�InU滳�Z�Fb��ǀ�F��T"�O\���U��Ǭh=�˯e�[��Kf(�Ot�����($	�l�a}��q�)ґ�z�,Y���䤪����#�/w��VƯ/N�!���w��o��q�M�GvHp�q/���h����P2xp�kFg֠䀈�E�و���0�@>�;������`�*[&�;�����g.��1��A�B�����]Ư
�\��w~aqrgF�#>��<Z{���������4��7�b�B�b�|�7r`�@�"wkd�>=�T/���O���3a��������-D�J�5��@9�_jgw�B�����;U�b����!$��h����"�s���u�~(,��  c0(t���ok _�f�iAH��܇�{=\B�g��������.`Dd�eM���EQEZ�HU+A�H�	 8Ⱥ`%�B!j��/��࿢]�J�����!B|���w}*>�S g�m���7�(���|$5e�Sm=�&�j�����;���p��V�f dփ/�2F�E�Dk�F��������yx�}R���4�Ye�Yia��r�xM�`�� ���H� 2Rj^�v����R�ϧ���qFK,DI���2�nV�e�����oG���T/_l�뮑2�H��:f>�#�qa�n�-8��ty�s�4'?_��c�y6O�r�:5cn�WL�T���ڔK2�0��L��R�
�.݇���J"�a�i.t��"w�C�!�~�xX��!W�	,��\a�%�Ұ���D��P�~p�6h��.�:��-���YAg������N^*=1.�
�݂���g�8��9cao	�ysc��ͫ���w�Z핕j*�-rkq�L�4:8F.'?��}a�+����
z�L��B��e�#�|fL`G0��dGaE.��.�B�O>)$��jT;�)ǖ�(cˊ�`>�u�ɻ�V�#�#C|���9y7pϩ���
�a�H�۠�ZR��RI.���)&�_�i�˖+���on��6�r-���F�ab�Uk��<����i[%O�eFh����(����Y�6Ya���uw�u�d�*�UUR��u.�ɧ��J}6��斣 �O�@�"�}%���T(��5=Uv"[Da��ޡ��6VmT������AA�MV�uBft37M���U^Nf���j�x���9�` ǅ
��v	�5�O��
$�D����Xй5��3a�iޝ<�����(��"'1
�%­��J��y�	��Mz���BBA/U
V�,�R6*lѱT)$�],����a
�<614e�62�e[#�)������u�Qy�Μ��۷4+q}O}����f��r�	a�޵הH)�!{���a�6��:��f�ѹg���I:G��0����n����ߵHI��/�PN=4Xv\�А7������P{`k!� @Ĉ��$� �'#��X#A`�`dl�!7N�TG�����E/������/��~* Pa �]gZSO�0y`��: �H=P�}O������a��>�v�䄌�jNNK(ߘNI�D�Q)?2����ʃ5� ,tװHC�m�'vIeFE>.H\��������`�5f�
�ĥ9�]7ZQ�%���������u�6W�&�mWZ������P�R��T-��б7����9��2Lv���R��)���G��f�<̳����^ণ��=H�)0��^0&?uɐ-6嚈]b�����MK�N�>�7�F1Y�g�ah6l��Y*�I���������1<'PZ�q�̸2�࢙��;��J�>��=X�v<��u�L�4s��?u�0�U���{P�
6c&kj�=�О�W5��X`�9�/�� 5�K�
���Z��Am� �luP��r��bm[���}�P/��m���Ǝ�uStN�����H>�]2ѣY���4���&����U03S��K&^	S#+����v5�]Bྕ$��_��/���-$�P/��9V�� !�rm���ǰq*L�(3��R՚u�8p�s�N�P�1u	���5T��m�f"�o��Ӭ�!85����	Q0>B�l���P�Q	/Z���s��>�\�EOL�+��u��_T����=���T)�TK������-��s��ݿv�����P�W&�5�m��y��q����&�V��F V�m�\$�:��Y�Q4��I�Lz��b�;�T �z�6��c���E({�hC���CWTJv(�C��� [���냰����M+m]q(�`1 ���$�fU�O��,y�ydG�Yٙ"���	�uE0; �?�?\Cy��~�774��$ni��X* d.�Z� 0�=�]$��_GQ�B��P�NZ��@	��@kr�kP"9=\�p�Q}C0x�P�r	��o-���荢.���`�Ks(���/ �vE9�N��C5>Hk���}�[��Pi�>a�,��Rp��১D*�>(9Oe��\� ���E��y�mf��J���#��@��(|iW�.d6�i�>�cb��z�C1�p�~��7���P�(~�?�̳��""��Y�� 0=�Zz�݁��\�P�,�2��."�3��FUUT��EW�{�pۑ<�`��N(�����aT�D�`�nj�k��Vոf(_z��,!Q�Ϊ���BC�I�_�)��C���:�:TM �,t.��p��01��%E���x�x����OG���P��":�m��roP�9MV�0�9�,u�&�8d:_�!����o���5�R��y��ǑÂ�&kT�~��
jȊ�X�Ln��/ao�VBq��P�T��!�o������>i�����4>�;ڮ�&��T�8b=/��q�Uw�22223:���(��@Վ��Qkց�\��x��kJ�++�,R�qN����*��w-��\���H�d!(`
@FD��8ۣ�ˢ�+�w|��]t5/(P���x$�3%����)��pb�"�t�Qv4�K'�Q�E�@�P`�NЈ�I����E!8[�� `� 	PLM��k6ذ�Y7X^m�)�r�8 ��Q��e���>�� aD�@��O0��	bŃ��e�q���H���4����Z�ݐ�4�Hqmqt�J�#Qս1��J8D�n�x�C��P-Њi �[D�H� �Bfl
(�W����HqT�i�o��C��/a�p�$RE-P���y�e(���)c0"��_�7N.�/�ـ��]#��#��0��nȔl�9������CS��	��� ��ȁ*�!�
��7*�-<Z��`����&0�6V�D��V�7]���8��;V�&�pz�����Øe�̾؁���a���p;\��w�GNt�d�Jޙ<9�	� "�$d?a���@G��� ��bdm�vh�^Բt�,]����M��p��S�A&�oKW�gkP�y2�ww�$`V7�����؋�Y�ߑ;M�%�/�%9ChE�����#�.w���PAJ�$T��9� T.��5�H"��>#��,N�)i��W�1�с��Ca�*02av���Ry�tơ�l6�` ���� �5���l���N�4�Kz�e��"�����;����	�����߈Nx���t��WuR$S�� \�.�u�D3�ޛ����q�kܑ�5�%*�k�!�R��OL���#,K�����1�H�Ԇ%�)N��ޒ��d�̝�K3���Ehj�p��b'	ST*���I���L{�2ळ��#"��(b�����4@�r�x�k�6�\:�TD�FY$H�R���P�R�y5%�*�#DDL$��@	�PX�
��+
�.��$a]ԭE�Z2e]��E�JBZB�1h�.��>FvZG%��:�O,�Sz�XPңC#S%�al?Y��#�i���t��H����A$�|�fŪ�A�K iE��^�MNk��@`ȩ�v� T� A:�F��A���=�mlA���8S�`-����p5x���ۿ4!ՠ���-���@rН�B+##$"%��M��F��E���Y�6���2�	��-�uP�O��@!�*R�D֭!��2Ӎ��M�u1�h����`�^�m��sA�$B�Ѳ����Mu���.�����1(pר7_�$	��.�r�4������<���4�C���.PI�B%���T��N։�wj;��ƻ���Ӗg���t�^�
},G�h`����l�ھ
����q�v)~��<�8�v*Aɤ� �H-�,��VQy.�h�`��B�h%ꮃT�<b��Z���9�)�`g�*��SUH��(�*.qU˻�&���p%s���#�C'�h��$�>h�b��<�z)��iS�]F5��B�+BIb� j��g1~S݈*m�B�68h��ժ P�I3)t����7lq�U��Gr^�8�^֕�:�o���F�:Hk�W)��2�	f6%�b�����q�kpv�F��SBi_m(�)9���"��I�Q¦�qG�K�� _*.���F�2�E��Sa�8.h��/�Kl.rB�
���S�ګ�w��hJQ�~6�H�J@��sǀS&�!�a�t	v,�Bj�!sh#��;%��.�Y�E֠)�L�8Jte�`�mt�h�.L �]B�eD��ë/p�������^�%J7D�j���y-p%�i�
]F�哠�b����F�ѐ���,Y��$UyV���ur��|R)"0��*�q*��������/�S�(bb��5�$��)ą2Ӭ�*�XK%�	����J�	�q���䰸J{U\�z��hee�56��"9��/z�]!o��:"&IR��H����5E�8�DXM�� ��k&������?UF�P4�`�NP~LO���OH;�yq�Z;�Iͯ ������T��4v��P��J���_Ւp��[J@I�f�N��(E:���ӟg���X�K0i�[���
]�Li
�v��S���01d���Q�����yBl��Lļ�~̺Q��O�m)���vo^A;zNDJfq��!H�{����sh�=��t�Cm��$�OD�b�$�SNV$ͪ8p�#����A�(�:�;��20�g|�*��(΁ �A0�<�U�&�-��ޖ��^�A0A[#$= �
} (�� �4  �@Q	� ��:���v=ߎ�zI����0b�*���H''��"+���(0
�TK���O���)� \��ܑN$���