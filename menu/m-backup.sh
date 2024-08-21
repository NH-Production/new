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
BZh91AY&SY��� ���� ����������pF@�  `
��t��A����{T    �)�L�$6�@�#&� 4a2P� �M4)	��$�=)�jzz�i�=!�jh0	�	�##!�F@bi��yL�y'�6��  !��      � @ 2   �h�      �I��h�@ 4��4@C@  HM24CA�L���$�L��='�I�<���i6��M�d��&m��I�t)�*\Hd��\�,�s<g�&w��c�/���_�����$���U��}��АL"�6�A��e㖝p#�W���;�5ㆺ�<�I0p�k:k���h)��v�M��\ȣ��Z^��i�<��튪~ �R�P�ʏ_a۠�
V�j�B��$H�/c�a�d$��<%��O�(ىrBKcu�����c��i��wo��=�w���z6�Ԣ�>�����enںiAXC�y�mAs��X���&#��9O�fg��~Tǰ+eFGU@a���<�x$�L�B���  @�S�D���.�K#��Ý�S�5j��ܼ:RH+�|�G_^�I�5��
��Il ��p�x]hf!A�"���OU��@��4��ae�:U�'@ѷR�2�s-�)�*��/V����*���a-�X�MH���p�gFkV����hn~}VƊe��^�S�3ш�N�q�85d[��(�w.�άQ�>M��I��4��2E����H�CИ���D�K�i�S(/IF�J��,B�Di��Q��w0�����%�.���J�0RF���t@.Yj�[��D��8��_,�r�w���K�*P��l�$�!$!���6��7��R�1Rpy�~g/�s�� :A�=՞�dP�[O�������`j ]�����T�q�D%m���Y~�.�P��ٓ��r��ា�����N)��{�\f��>�~«��Û�9�����t�,��,�a�^��qu/� �v.K��� ĂH�kyp�_�Z�ⷮ���,�������|^/'U��_}�]u�7-:|�I'�W��p'�La���B5�c� 3.�\�!  X�dұ"��8�k�]� k��.t�p��x4 �'�~Ɂ�s:I��ص��rw���]	:�*���凼�վ\;�B���B͟:�?��.���f��)�&  (�C� ���"@~>���L�o=��"��T1 � ��`�pvċ�����}�[΋T� ����������F)p�gD3U��Z��v�~�6��p�2� h��JFB�{)ՁJ��ǽ�g��N�h�
*�FaB`wE+H�ph��X��rG�ϟ�� ����C��i��eo�3�b罽T-ǫ�q��4h�#�N÷�-��f�ĿO��3�G �V�̆pi۽F�>ҝ�+_hND�������n,�����qu�(3�eH�r]e��f���pA�Xĥ
��Ka������}���ПY�˿x�Fo؇�`ǚ	O�pRP� 4���0�u�0C�f�u�8mź�OwO���z�0�:�q҉hڭ%�^��(��;�2X�X�7�+V7\`bD���2����t�Nq���GD0s!H-�6�����~N]�"yD�N5���ĸ�f(I[�r7n�,�}�ܮ�gy���`6�)btjZ���J��,4	p�v�Y �\:C3��1K���{���3@�'Dc����"�/�h�aZ��0Q��!��:�/㰤��qt���W�u����!c�5�M	������Նbe�;��9Ӡ�DC�,c�#����w��޹!v^	�y-q9 ��P����bqM0���q�F[�k(�727�MRĵ��?����{��I�zSCr=q�n ������#���X&�9�@pbӒ��6+����e}֟��^�zD)Ā\�g˞�4z�ˤ��Q�0BO��� �zP!�@�KvM����1)|�	�Qx�c�f�"N�'|�U��qy=���4Vfč ^A��=W0�\O��V����K�[�/�ش����;:�z�=$�$�Ǡ�J�/,:�ɴ|�sCխz�!�(u�F�PF}�BؙZ����"t��Ҟf��.W��2W=Nŝ::�D���j<Ff�3J�8�b[dç���-p���;�^Y���nﺗW��l C����V���CXn{%!ف���Wk~fV�kƉq�Nz��9Ss���T�I`=L�K�҅��9 acf�׭n�bb[~f�La�8�#A�!-ɡ��30ܙ��,M�y|_��P�f&��A ��O@i�Hcq���a�N֔(1MGLna�C/ܕ�
=�G�5���l�
7Ͱ����=����A�!���*���@����
Xq�?��7���B�����b�(-����ܑN$��#�