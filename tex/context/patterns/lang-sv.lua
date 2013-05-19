return {
 ["comment"]="% generated by mtxrun --script pattern --convert",
 ["exceptions"]={
  ["n"]=0,
 },
 ["metadata"]={
  ["mnemonic"]="sv",
  ["source"]="hyph-sv",
  ["texcomment"]="% Swedish hyphenation patterns (Jan Michael Rynning, 1994-03-03)\
% \
% (more info about the licence to be added later)\
% \
% This file is part of hyph-utf8 package and resulted from\
% semi-manual conversions of hyphenation patterns into UTF-8 in June 2008.\
%\
% Source: sehyph.tex (2003-09-08)\
% Author: Jan Michael Rynning\
%\
% The above mentioned file should become obsolete,\
% and the author of the original file should preferaby modify this file instead.\
%\
% Modificatios were needed in order to support native UTF-8 engines,\
% but functionality (hopefully) didn't change in any way, at least not intentionally.\
% This file is no longer stand-alone; at least for 8-bit engines\
% you probably want to use loadhyph-foo.tex (which will load this file) instead.\
%\
% Modifications were done by Jonathan Kew, Mojca Miklavec & Arthur Reutenauer\
% with help & support from:\
% - Karl Berry, who gave us free hands and all resources\
% - Taco Hoekwater, with useful macros\
% - Hans Hagen, who did the unicodifisation of patterns already long before\
%               and helped with testing, suggestions and bug reports\
% - Norbert Preining, who tested & integrated patterns into TeX Live\
%\
% However, the \"copyright/copyleft\" owner of patterns remains the original author.\
%\
% The copyright statement of this file is thus:\
%\
%    Do with this file whatever needs to be done in future for the sake of\
%    \"a better world\" as long as you respect the copyright of original file.\
%    If you're the original author of patterns or taking over a new revolution,\
%    plese remove all of the TUG comments & credits that we added here -\
%    you are the Queen / the King, we are only the servants.\
%\
% If you want to change this file, rather than uploading directly to CTAN,\
% we would be grateful if you could send it to us (http://tug.org/tex-hyphen)\
% or ask for credentials for SVN repository and commit it yourself;\
% we will then upload the whole \"package\" to CTAN.\
%\
% Before a new \"pattern-revolution\" starts,\
% please try to follow some guidelines if possible:\
%\
% - \\lccode is *forbidden*, and I really mean it\
% - all the patterns should be in UTF-8\
% - the only \"allowed\" TeX commands in this file are: \\patterns, \\hyphenation,\
%   and if you really cannot do without, also \\input and \\message\
% - in particular, please no \\catcode or \\lccode changes,\
%   they belong to loadhyph-foo.tex,\
%   and no \\lefthyphenmin and \\righthyphenmin,\
%   they have no influence here and belong elsewhere\
% - \\begingroup and/or \\endinput is not needed\
% - feel free to do whatever you want inside comments\
%\
% We know that TeX is extremely powerful, but give a stupid parser\
% at least a chance to read your patterns.\
%\
% For more unformation see\
%\
%    http://tug.org/tex-hyphen\
%\
%------------------------------------------------------------------------------\
%\
% Swedish hyphenation patterns.\
%\
% Copyright 1994 by Jan Michael Rynning. All rights reserved.\
% This program may be distributed and/or modified under the conditions of\
% the LaTeX Project Public License, either version 1.2 of this license or\
% (at your option) any later version.  The latest version of this license\
% is in http://www.latex-project.org/lppl.txt and version 1.2 or later is\
% part of all distributions of LaTeX version 1999/12/01 or later.\
%\
% Last update: 1994-03-03 (March 3, 1994).\
% Revision history:\
% 1991-01-08: First version available for anonymous FTP.\
% 1991-08-08: Changed \\aa to \\aa0 at end of line, to stop TeX from\
%             concatenating the patterns.\
% 1991-09-03: Cleaned up lots of inconsistencies in the dictionary.\
%             As a consequence, the patterns shrunk a lot.  Also\
%             added some 4000 one-syllable words, some of which were\
%             hyphenated by the old patterns, and some 1500 compound\
%             words, about half of which were incorrectly hyphenated\
%             by the old patterns.\
% 1991-11-01: Added another some 6200 compound words, all of which were\
%             incorrectly hyphenated by the old patterns.\
% 1991-11-13: Added another some 6500 compound words, all of which were\
%             incorrectly hyphenated by the old patterns.\
% 1992-01-30: Changed macros to ^^, for use with LaTeX and dc fonts.\
% 1994-03-03: The hyphenated dictionary now contains about 118,000 words.\
%             The hyphenation now works much better for compound words.\
%             Patgen parameters: 1 2 20, 2 1 8, 1 4 7, 3 2 1, 1 10000 4.\
%\
% This file contains Swedish hyphenation patterns for TeX.  It assumes\
% that you have fonts with the Swedish letters in the positions where\
% they occur in ISO Latin 1 (ISO 8859/1):\
% Letter:   \\AA  \\\"A  \\\"O  \\'E  \\aa  \\\"a  \\\"o  \\'e\
% Position: \"C5  \"C4  \"D6  \"C9  \"E5  \"E4  \"F6  \"E9\
%\
% Load this file into initex after plain.tex (or lplain.tex, splain.tex,\
% or whatever).\
%\
% The patterns were generated in such a way that they will hyphenate\
% correctly if \\lefthyphenmin>=1 and \\righthyphenmin>=2.\
%\
% These hyphenation patterns work quite well for simple words, but not\
% quite as well for compound words.  I'm working on improving the quality,\
% by adding more words.  If you know any Swedish words which are not\
% correctly hypheneted using these patterns, or if you have questions or\
% comments, please contact me:\
%\
% Jan Michael Rynning <jmr@incolumitas.se>\
% --------------------------------------------------------------------------\
%\
% ",
 },
 ["patterns"]={
  ["characters"]="abcdefghijklmnopqrstuvwxyzäåéö",
  ["compression"]="zlib",
  ["data"]="x�5�Y��8�h��\8r-�\12\8�1�\1�/�:���y�&�\19ȉݽ��\15�P�+\26)�?��^|��f\8�L�*\3?+@�\0T\15��j\0036}����\19�fh&�S����\14�\\���k\21\9f�҃�����,,�u�?5�\18����\2�r��m�v}����.E�nk�݆�Q\7a6�l�����kG\11�wQ�}��\23����K�o���`��7]Y��������}7�N`5�TԕS3P�%QUW��oCs5�(�k��e���\26mF�5c��m=�{��j���IwA\127��I��.F���ِLf��߾�����[�\31v\12���QO��?6�|u�\12<��t�}\31F�\\ф�L�t��q�z\8�ޱ\31�XF�v!Z:�nP�1)�1�i�\25�qi�A�wGs�C�����ߟՈ\9���S�ԍ�ݝ��Q�����N�xu�\2�v1�C���_�?SLۼ$\7v����\11�Q��7�0.�~rԓȗ�L'�R3>���a��y\27Yz�hǖjd>�rn\3�\127�c�,��sIvr�\12ϱN�f�\4޶+b�\2�n\0�e�\\.7r����k\12��\18��M,�u�\0153�vh=��48ș\1�]�gQ\25��lS~�%�\127\127Ύ�`�ֺl��w�lCCC7ƊNoN\19#��6{��\11��\11ís�9[�\31�+�${[�'��ܙ8=�b��>Dm�0Ն\14�ξ\\��s�(/\\\5��n(�\4���\31�/�ӱ��#(ǑM{�n�����\21�R<bU��<��9��V��\30\17��]��z��C�wI\1�*X#.�߿�v���\13���w�U��]eZ��#j�{����Q�ͽ��M�&*��\9PM���\14j��/\15���π��)�\30!f�A4Vƀ�z%ţ��\24��\31MG��z\9�H��THd���\0027c�0\5�\2Ǹm�G�>��RT��ɶ��O\18\25�/�ho=\13�[�\0247�*�\27K\11Ha}ê\6�\8��Ax�E+�\21m5���\7�\"|l�x�6mo#��U�EFv[;�2K��0�#۲�E#���݆��(���\2�N\31�c\25LKQ��\11�9�S�>(u\26J�F[N\16Z�ʐ�\1\27%�u�����`�\19��ƪ�=��k��Ȱ���ē~��\11�ݻT�XIL�5�U�uɴ\31\1�z�t\31vl��\24𦦹}\22�A\0�k�\27Qse\31�j�\15\9&J\5�j�g�<�X'�sh�,\3CX\0�e�\31G\
\4!��ԙ\11^h\\�SQ�iK���$\6\25���I�1�j��'\3����ji�K_㰧�a\11��f�mW�}�Л�J�\25q��\
����%z]��\28��VW��jZ�z�!��֓�v\13�Hq+51��\26\3�V�gD��Y�{c��k�Q޺Ad���v�\17oַ�y(� VrJ��I��΂���X�Z7�ϊ&m~ȒI�%\22x�-�}�R�^��\30�Ib�v\30�hxn�l1����᎓Y$\16.k�i].7s�ۉ͛����\28���Ί\
�\17%\30V��j�\25.�bD�Ú��\22��;f�&5�J��<6�\2���*�o-T&G\16eƈ9�\1�h�1`�z\0_�B���#\9�\7��|��r�a\12�.\0111���#��=F�lw��\13>E\0308-����vL\1\29��<�ђ��m�\27�]���!jg\24l\4���B�cŕ�WE5u�+\23\18^�\8�C\27q.!}�\14|�\21���b�?3�3L��}o�P�va�Z�\11�/�\28v��Ӈ��l���\22zz�\11�'�O��N\23�)\1��g\31!,��rn�S:a\15o����mqGD\30\2.����=8(A�\18�\0�+h���\29ޣ���\2&D[��^��P�;�\7PO�\16�Ԋ\7A\12�\
���U�ѠF�m$��\30��^DB��4� �\27�\23~OX��[�0h\24AH4w$M�A�\3Yn�Ea{\14x\
mq��(��\19�|�\26:>�\26\"�D\26\8�]�DC��Ջ�\16\5����\
�����]xؐ\13>�\6�\7�\15�`\7\17��6�<[_\"�L�b��;�^nHl�}I8�\11[\\#c)�;h D��m�~�\0006�}y7��ډ\12iGQ�}�!\127ug�}\0202���|݅(\0A@�uχr(�o\1!�g�\4��U�_L�&�q�pD-\\�JR��\17f\11!y܏صw6Qug�ލC�l]B\13h�t\18�-�\1lF\2>ˢ�D�����>\17�>�$/����gG3���냐/V=\16N�|~-�\6�����7�\3�'�\0201\20�C�2�\28\16�?�\21���\28)��\0t\2Ҍ�\11�L�kb;~*\30|:�\8A\8\25ɐ%��w�GkF�|�#\24��H���m��poQb��^~N\29���\18��i\
�䅌��Fkab��G[�]?����T nѡRv+�]\8�\19�u�A�0=L\15��#gy��\31�\19�\14\25&���0�x|*���G�x��\31��q}T�W�`��DNk\3v\1\7#%�\15E��C�X=��\31�W�\20ip\17�mC\"hE�e0����l�\7�\24�\18G\9�~t\21�\7B$mD�\29��)�H�\9\
\29�.u\24��a�\2�@\22�`��!������Y<��ŭ����\19.�7t�1@��\13��c(�\127���@\8d\13ʗȎ���K�r@Ȩp\13\15�\13�\17���07[��c�.r\1��9�*l�\8�3�P��t��\23b��u��Z�\30�Z>*t������,�R@�\31�\3��j���l�,�l\30Ћ�R��\14�)\14\19�t\9ig��\11\31K��(�ãD=sn]f\8\"}x�z��.\27ѶI�tAҕ�mj���$�����\17�0���^~�'E���\4-�\
�ʘ���\11�\1;����0�^�[�\2d\4�|(�=��rC�\0191�[ӥ/��=\13`N�\16�q��m����D\"����E\"�,y���t֓M٤�\20�N\"Z�BI�\25VS�\0\31�\29x\20<\"�n3��n#��b��F\9�\2\14k9u���X�؃0�d�\3}B�y\28���Q���`S\15\4G���-s���QHu����2���6�D���/���\23�\14�8>B\19y(�\1J���\29�@n7�\127����Ntu���.�[[@���t\9����\"�z���Vw�E'\19�>���\1{�A�B�\7��@[�=��\29k�\0�\15vj�\19�\27kU͚�A�V\26�-�@s��z��r���rlt\"�\
�cKwO(T�=w�=\25�\14\1����T\8��T� 8�p׈)\16.�xu�K�𬁉\"\18��I[qڈ�/\1MO\\�B�n���\127���\23��^�\0R�5/\6��xt��\0��,N%#⎞d0�d\"\8%�\\$\27�&�{螋)\14�i����y\11�Em���DA*\9��\4��8_\3�\
�F>��\20���*�2p2\6\0052�Wy��ʿ\27�\22Rk�4\7�\
�>��$�p&`�3�l��\5�\11\20:g7�\30�v���tejO<��\11(�L��!K]�0Qv�e�ѺS�\14ԓ\3ZUJC��0ܰC7�Mi�T\0�i� U\2�n@��$��9�i��Z��\28>��CG\21rP8\0025�|�Peh��\14�谋ya\24\0224�n\18Cej��\
\"�ʹ�:���U\"U\28��qu�W9n�\30���6+�$�,Hb��e�������\8�����{\3� �0�.� +�u@�e\22���L��4ɕ�\2�3\11y'#�W��~�O�m�� a�\20>��C8�r\28�\25e��'�����c�ܷ�߿\15�\29#X;�lM;��6�J��� ��V\127ы-���ݝjL*��8뫢%�\28��]d\0074�P��f7�s\28Է\11��C��%\25B%�\127�\26�\7�`pJ��E�\13^��1\17�\127A\18蠍bQĦ�v�\6U���\7���e�\15�j�\13�ݩ�Q�\11g\11��Pr��a���u��P��BOc:T8\6sWt�,�ُ�9��Ā�iջ�o�WW������\29n��?�J�\29���oG�\17\12��+t�t��ͥ6Wu\127\24�?��,��D�{�ų�P�ۨ~J��Б'��\23P�\31��x�����X<UΞf��>%�O���\28��p��'���|R�\19%\15���\\te\0<\2�-A c\"�Ad��bϡx���sP\9��Ҫ琚m�\19�\19O\8�%\13%3S>ѽnOB�\5�c;I9���O\27�^�\\�R0�Hݰ\29�\11�\9�e��E��|k\1���x9����]$�3�.��\26�����o5f`���c\4��i\2\24e��Y$w�â&�,H\2�vt]\11�\19��\23OT�g�1�\26����1ux\24ڧ�-��\17e��\30%�B����B\6��\12�{\1��\0016*\29O%���\"��G�<.��yH��G���<�ֻx��\18\127�V��-&\11\21ʝ�����)s{!�n�A���@v7�\17\24�0�t�۷\13\19̔���^\14�{\"<8\18����ӿ��Cm�\29��Ӫp��n\23D;&7��ۃ���,վiOF��,����Q�q�Ыi�]s�\9d\9\3�Wї�GZѩ�\1=e\19�#���Q\2��v�Ř�\0306���.E^xY\0134>-s#��\21�$���t{�8m@��S�].\17�xzU\21�\\/]�.7Hؽd�j����.CCh��.�E�xO\127W���iZ��C �[�C��@���\\\20�N\19 N�_E�%��!ԫ\"ӳ���\16\18h?\4�4,N��!'��H��P:�%�Pի��!\11���K�یI\
C����c�}\0R2�\25/�e�\30����ҩXJ���l_\0038\9��ӗ)��\26�\15\1�,I��.'\7'�\30�\28�\30��\22e0Je���\8\18�\29r�7�\18�9Z��p��u\127�3}�3�\13��]/\8k\12Y^��|0H�쿇��5���\15���)|��=ܢ\15�o�6��:�\9���U�`7����X�jdI\24?B��%2 \14��\24�lֹ3I�HC@Gt�9!�8��\17k\0045k�\28�!�A�ԧ�Ԛ^����^G�\29�\0179LQ������|{�D\23����\"��^}\7��\31�;�\27'#\3z�F�J��#\15�{�/k������A��n��KM<La����\24��\15�\31�{��<�\19���\27N��L����Q�H��\25��7M/\127�\25\11fg�tp��e�˚�H��\17�W�\21��_-�\17�:\5N\30Y~y�B\5_�,U���\15d4\29�;�4ʬY��p\5nȍ��|g)0g�Y�_��\11�k\23>��\17�R�\8h\22�Y|U}�žE�\"�\16����\30�b\23JS�n��\23\21)�_l��D\14x \0\30�� �\2�fE\22\7�g���k\9�_\127-�P\13~\7�\11���\"\27J*@i��z�\1%-@9����a\2\29����Ek�ā�\4x[*�2�Ẃ���/��\11��\11\27/6�Q\7\19��\0038��D�\3���V\12\20�\7x�7x�`\0\11\11�\2ad����\14�'�QL>\8�D?\24�\19=�\23�\6.�������\1i&�\3�ax�H\12�[\0K㜃!�\\\7U�\28P`\7�#�{\18w�q�\16�\1\30��г�\21S���7�\11�n\30�\
�6T\3����\0309T�I�(s$�:�\14��-�v��?�9>/���p\17�7K8���a\7\0195h�A�[`�+�}\7���mg�T.��V;LPj�Ԋ�\1�I��\
|D��i�\16�m�-�J��PE��$Rx���d��0��ì|7�n��#�=�i\26/\0315� <���\14���D\31\127\24\12�\11��\21c�\6\2��(s�\27��P%�6Äz\9T�)(u_E3�\28\30Vd\5��\16�h\29\11a���!�Lu'�o�M�)Y�:ى&��r�hf�\24��Q���+I������$ms)��=\27\16#�|�D\11\29��A_��\21\15�\29�TeP�\29�T\26��Y\18T�\4� �Z��Z���z�.�L����\22�\30�\13��C�\26gP�\28�RY���s�\1>E�XY\18\26�hP�\17��<�s�09 �ve�%�67빖�j� ��\24��+Y5�(�oV��C�\22\27x\0039\24���\2�J\7��\12t�O�3\\QK���ȯ��e\1\4V\17�p\23����b�\26�\3��\16�\7\3\\i�!�\16�n\8�G�2�ӣAU�m\31�u�^�^Q\14{��\"ƀ0O�\27n/݆�t�x�6�IŠ�6�����q�SR���\
̷W[T/\4叢~)\30�Z/b�\23���(^�\"@�v��B��n�B�}i�Ւ\18Y�~A\26��\23I��/�_#�ƩxyF�\26�d�DJz�:R�R�zA[^���ׂh�Z��\13Iϓoq\\\8�\14��Z�\23|�촋26�L�KR�b�tB�\127�ڋ\23�\9\14X��\0��\24+�\30Q{��B�\26\3�\18\8�2�\30��=�+�q�����\21N\16�-³[6\28���u�\4�������62J��~\8\30\23���m���\
^\13�57���m��\8\30\11�1d���\16X(�\"��RҼ\6�B֥��TA��5\26�\17�F�\30 ���bl��H�:�.�d����\25܋�\1��-G\3��L��\4k!���:>.�\5:M��9�dl㞄�=��o���o��`\15�F\24^�0u$bdʱ{\\�\22w\26%��\11��\6���W֣\23>\0E�1����\3�RB�)O\"�4�R'iP�F��\30\25�#�rlz\22��E3�G$�d�\11\25�a��aB�l�AV1j��M\3\25\15��2z-3JO�Аq8��\23�X��c�)#�mD2���7��'H����!Bu�?\2o��In\3<uw��s�\28\"�0�\18�@�f�!�\23 ������]u\19˝\
\15�{:Fݿ�\15\0273yLψ�\5ǒ�\
��j\12��\25��\7��\12t\24�����\19�V��g1.̓�5˃N.H\20@��qCMM�[���yᙴ`l��\7�Y��2φ��i�7L�\21��ŵ��g@�Gu�q�h�Mi���\27\0163��!r�ƻR�]ڨ�>�ZF�f\1�g(5��\20o\14���\24�\26г}�\0163�7J�М�2�\1��9TQ\19���L6G��xŝS@\4�1�lZ\22k������9����!E1!�w��\12��ᢉ{�r$�֎\22Tn�[+��Y�셑ZkC���$�\13t\22��IQD?��\17�����ޖ��\19\26:ޤU#�T-\24eb\15��e�1\24\18�H�d�X�q(w�>hy\4��4(�N�V�D\30\23\18-��#�Ͱ7ѱq�@\21\31��B\15��~Dmv\31�NHs�\20s \11\26��W��C�,��#m1G�M:�\11\4�%]�>\30�\17աb\\Ng�lc\0����I$�AK�JeD/�\25�\18a�DbK�P�i�\25����'��Cɣ�\17>$����4(�ʑF���|�卮�\6JF�~.�bjT\21\4�\23Q��Y?�f��@.�\9���,�p<P�&o�q?��Y@P��z\25�~�#�*\21����\13���L�F\2���[�9i?7���<�\1\27� %\17'c�>�\7�T}醺Oq<F��BѸ�r�ޓ�B�A)��4�\11��\14��n\16�\9�gzx\23PL��Oq�?5��ƽՈ=7�^5ٸ.$�k�sS��\
A��N�\4MM�\28�.�,�@�N��v��^��\20���B;��h�|a�kB[�ʞ�T��{X��{LWN\0083,�I5��\7�ܶ\12u�\0005�EO1� -�C\16B�,�b5<\2�L���~�s��uc\0073�W�\25i��Ji<����.�i�:�>�?��Dǝʗ�<����\9�aB�7��T)��=�L�\19�+��0��\22CT�\8�&��u��{RG�&X4�\6�mb\0�)�8�i´��\12���D\12��]�\"�؆g��SO��<��褉�45�9ܥ�;YV\3��dPno����~�jH\16g%��9�gH�4k�:!GNK�~��i'��\4_��G�Y���E@��\
9N�\8�����]ä\"3��L!?Mk����ʯ��a�����t�\4��t� \3!�П�\2�6��I=y��\28��\1��\9\19���8\7�C�),\5&4��n�ƶ\5\1\23:\14ڞM�U�v[sz�6� <]\6�Sܠ\8�\17\15G��\27�@߶���I�\27�x�<��\11�\9o�Boa\6�io!ۄ�h\1N�\5���\30ڭ{n>iz�\7��qx���<\26b��cg4�irv\\\16��Z8�\19��*��B#i\\*\31&��\1�34P�g����ӻF����\29�\"�vȫ��\19\0K�ޟAv�7��H�)��azK<\26Q2�RC9y�\
p��&mʊ��\0�T��8\3\8�\30#���\2a=�9xÝ\30R\7p�\1�w��mī(,,=��\2\"$\1S@o�(���~4�5\20%\3Yrn�g\6����\16���e9�K��wCB�\
g�\12��d)�\6hDC¬o�j��l �Ӌxe�\4Η`\15�\17P�{1�\9\1279C��G1�\15�r����9�En(e�����S�\4B��L��8\15X�3�/g/�u�#�\27�Ê�\28�P�e���\18Ų���R�g/MM��\"\6�>C����\\\8L�\21�g�:��\28r�\28�z\30)�\14\15wl��*��Ig�2�!L���1\15��4\31s6ǹ�\30y�\28j�<�4R�#SM�f��L���2s=\31\17N����Ŝ�v�5j�\19�\16X��9\30J\1�l$�$�\6E��\3�5\26(g%�\25٘�X�5`�,q�'\"粫{ψ�s)��!s\16S<�Ċ4@iR:�����\31\0079�ڬB%j�v��Ѐ\18\29!��K�Y�Ǭ���\28G1��\24��4h.�N�vɊ���~�\22\4a�\15�\1-@����/�\12�&�\26�#�f�\25�\4ؘ�#\8ެ��x������w�>T7��@�\23��&-`t�2�>�\0@�q�\20\1����I�\15�<\"D�3l3,�\6�1@l��\20��h�G\12/���/���IL\13��!x\20�4�L0��\3@��Qv\13�\9V�(R\24�\16;��\8!\
��\0\0�+�P�\"5-ې�9\25\0276���h��jv\4:�h\4DR�Nt(�e�2!��\18\17'i�\26�\0118\20)����{t!�G�\23i��:\30��Ie0i!i�0�\14��@����Ka���6E��E��\20׻\0�l\9�U�x��V&Rc�\27+�J��I^����uӉ�}Wxآ���2ikŶ�$�<\
\22��y����\11#�tYl�`��9i�Ig����KB��I�g˪l�C�]\127+<\19�B�>��Bۅ,�\27�9\16�/{B�\
)(y�\9�i\20��t�\17+���\15SI2�1I����\0081�6\7�1$�a\14�/5�wJ�2\9����I��44\29�:x���\27��v\11c�ۅ \21�\17��Bg���ϓ��\21���i��4�Z\0t��\0039B�\23տ\28��\5�N/���u�\\&qǐ�cH>�b��\17���]H*ޞ��8g0,G�W�Im�\8hM\
���C���<EL�a$hh�1fby����[���\7bI�0-nL�ʀI�����x�\5��`Z<NL�f1\5��\6���ι�J��)��쑨3�J}�jS\21��8��C{��3��\16�Z>M�FB�p���t���:\127\14�\8HΦ�!h����@gFz:X��s\21�\25[�h\7Z�;�ըP}��X\127ܿ��foϒCLў1CP�1���\11���z��\"�������H�R�\30�����ˌ�[�eկ#\7ru�j8I�\18�M��\30�\22)؂������A�L\7����*\29�h�\3?�]�]��\26qzS�n,��55��Ub�k㏀�d�\22Y�\27�\3��ų�\127\127P�D�))�%�u\3jд��\2��5���ޥ��\
\0#���u�\22\2�Z�G�˧w\21\11j��@�\1\0145,�\5I��Vu�\26\18�E�r�n\8��7.ĳ��\0275?�\
�K�4\23Bߢ݋/z��\9��K_�kܴ���Ԅo���\\����n\8�D,\26\8\20qz\0231Q��,��=�@}�=\4��,�?\0j ��lpQa\\��n�\26��e�a�^��2i��L\
�ˤ��\\�\12\23��A�^\15\127u!O\1�ɫ�EMsA:��8x_|f��\8�At�\3f\3�V�</aM��z^\\!S�jv�/��r�{6�M\26P\3\12�\\��GĆj�7�\5^V\"iw*�!��L{�]�4{���\24�/#F\0068m�t\27l\127�\"jQ�c�.����26,�\23�<��.�2:��݊�\11z,`F�_�\15���j� ���s�bS���vyr@׍w^K(�K\24�.���a�[��q�`���\
�xt⭋�G�:w_��-K\28��@�=\15�Q��%撇0=Z��)݅��\\�9Z��5ro΀�a\0161\2\25�%{�\24���\11-�\11���*��Qм3Y���g֐#\8�\127.h�����\8���E*���\\ϥ���\18\22GK�ϥ\11[8���\23t[�\29��>|\4�\2�P\11�%�!\23Mz\9�5`��v���\\v�5\23-0I\27�N�\9Cކ8xqٸ\28�����\18>�ry��.��7\25\22���lk놄/��-gl�36�\25�^K�K�\15�?M��K<Q���u�QG�\127\22k˔�\4\12U�M�'���z�MQ�T�\\�Mk��\1a]�\\nU�\\��\16����p���r���k[�8We�\21�pUL\\�#\6�8�^U�\0000�A�\\4k�V]\1\19\17\26M��R6a�\27\23m\17F��.&���i�\23�k���*֡f��\\\13��M�\"����% \2_ |�ȗ�=�ǒ\0ʭ���\8m�#<�1u��D�I\14\15\15��'�h���\19�2���sqĐP��fF��\13�ެKK��,̅\15�=�!{�J-\1����H \29��I4�>��_���K�[�&&\1�\31��8�\18\7��%�\2E�HK��6 �L�\31��\8{\7�v�����/�cJ���6SKm�Yg�B���w��(,_�]\12%�h�e2~��ꃠr%#�F���C!`î9l���#�5,ㄣ�\7�\2�\5m����6��\8$m^�H뛟U�8��[\17zX�RMX�W+�Y҄�|���\26�$+:�\27ŵ\2Ya��-�z���~�O�Q\12]oκ��F\31��T\127L��8U�u�\30��\15��������߿��B������&V�\7�\4����\3q�������3�;��S�+�2� t;r���\20�,D\3Hx|� ��Rn5N)%�\25b�\20������WW�\20���*Rz`If\8u�SN2�HǞ�݅�\15�\24�9�)�\22!{�+`k�R2b6�^\29�:��� ^GDu�\29��n�H�*�ً���\4+�^�G����\28O\5s� ��n\24D;�qT\14Q)�\9�3zٓ��]{�����܀E��S�k\24E����Գ�s盺�\31�\"\
zE\30�L�4�&�L��jHK�!�\24p2��\27��2\127\4L�ͺ7-S��s�*���]#������m���\"O-D��.C�������}���=�\23Ju2�\29�M�,>�m��|�~py\\�b\17v\8{�\29F�ǂv�v�ܙ�h�\2o5�pv5_��F^p\11h\9�Z��N�g\7*�p��\20�&)��uO��Η��ŀxb��}S�\2�a\4A��Ӄ�^d��\0287儔\22�H�\16+��\17��4���}����\1�\1�\0079\0307e/�l741�\21Y \22��(\5�4y�E\18��|�\25ғ�rkh���&�ZS;�@����Wd5K�����H����J�4o��R{���\25Q\19r\8bY+��G 80�>����f�9�\28��rh�YF!\28\\��qQ=\13$�~0/JY��Q�W��\\�F�\16�\21/r�Gg���\15�\14�\28��2C���\6PH��Vd\21�\28\31i(��`�\13\2��0D\19B\13&d\28��\26��V�C\2�[9��㘗�3u]\\�P��7��\11�nq\11��ND�u7��'��i�\8\7\9h�j�B�$0N\3}��b\
S���eφ j��t�GJH�Yc�\"�w�&>LpZ���Vr^վ\29V�Q��B��N޽��)}r`�&�\18\17\9d��Y�._���\27�?�;5\30a\24��q�\5d�3��\127�}\14Rg*\3��\25}D�|h0�����Bɣ�\11t�P*�#a���>���F>Yα'�\127��~�Z0�\27\6�/fi��c�\23�\28`M���Q z�=C}��\21�\6���;����~�\127�\28z��0�\4���G����9P0$/�3��\9\127���\19\27��T\18_�q�{rQ\29m��SM_�����.V��[�_\1�b�W�\20 ����*6�n�\8k��<\16�-�^��|+�\25���[;�C��-f\15�h�zK��o\21�!�\19o�\9��[0Sܲ�Mֹ5�h\19;֠�b�)� ����[\27\7P\27Ԁr�1\26f�{����ͯ\18�6�lu��\6�#\8�&P��\30h�\4c�9����z\7dul�C�\18Q=H�\21�&ⴣ+�_\21�q�z��V�\3�8�L�~��R�S\3�x�usi\0\\ck\16ݽ��du��1���׈-��\22�YT\13++��B٬��ؾ\6���غ\27jϦ!\14���\0131?\15����!��0]��\28\12\25�,��z\17xv�\
,��nq=/�\17\26v�����0\5s\3Z�\22���hzX֒p!�\11r�\11C��tYy!��=%e���\0045���^�#�ݡw�S�&��>ZlX\
BS�\7\3+r�Hu�$�rFh�qSDM\31\17�\22���\31\23�9���>��|\9i^E�m�V��z�t�\26!\
f[���@܅ou9�_\20���}��24���<W�)�e\14�/\23��\
��`-��_\19��\6�b�A�AK���`��h4f\20{N��\12��K��:\15;�\20mT���6+|�d$��>�\14�\3I\22A�/]�kdG�\8�\25>�<\21�#\18\30��:�/\0187*�\14mc�qLї�E;��Ӫ�\1|�~�����\22\23�\4I9�4�˼�[|�+l�5�\0223\9�6��5��h�q\15�\28W�f��敖�\12U\22�\28�M�\27f.\20Q���l��n(v\26�mjv�2��$��.\14�y_DY�g��I��u+���;�\30���񶻡d\27.�\30�x\17;_(�tN���qї-�S3\27�9j��\20�i\127�vn\14�J�$�\14���\17Ќޜ��{Q�|8��a��<\23��\0119��\6���T[���S��ʄ��\"�֩��^�*3�\20��\28�Թf��1p\
�r\3:�a\5�%��\3d���y�\19dþ#��\15=����|9|�\9l�%�s\3�|#���(�\1�7(=�\"x�M̢\\��\7�\31�<�#\"8�2��G7.O\31\17���_lv�����I��!�\24����+�Ze1�%�7�I��\28�z��\11M\0176y��i^'��\23�yUb\18e�1�7�d�ƀ�\7ڭa\26j���C��ג\\�xi[c\30B��ű5WE$�BJ6�\29A1�k|��@\0075�\"P��\4�$���l�7`��\6\31�\13��\0\31r�ڗ��'\4���67]�\17X\6\30��\20\8����8�7�4���Be+m��۶�n\23?���Ń�xqk��G�p�< \30\"b��0���`\15_\30�Ь��\30H����J�ߨG{\\-M�;\27��\27�\4�\"���őS�w!n���c#8��E������-���\25h\8:��t9]���\0151.�\20\27h\31b�kD���\24�f�]\5���\
h����m��(\\��\31v\19��}���\11\0188\6b'�h<uwD\
\23�(���A���3�\8\8����\7z9�9$����\27��o\30ܠ��\
e#�\
h\27\30�l�莈���V�\16�@L�oIޟQ�{\12��7�\28�t`(G\29��_k�p\\������\21��@��r՜o�o\17�^uja$���\127\11e;�.�\"\19+樝\31��vT2��\26\14��!��\29�\17��`n�&>�\29J\21���?<���|{/�\5�\16J�O��\25\27�\2)\23T>A1P\17�T\0088�\28��yɹgP��\13wL��~��M\16�h�yQ\6�2�\27R)�@S4�\\s��\8��{K�5�^q��\0269B ��x;\0070k~r�J�M\0��i������^\2����\11�� k��L3Ҭ�����M�v�ö^S��\15�dS�H�`KW\27����Pqe�����g��a�����kS�ٮG%ȥ�3QrW\18���i��_G�An�ރ�.~b����{�){q)�=���n\15���El|��\28�474B8\8�e��J����Qr����xPu�<5\21hBl�\28�B�\1�W!�(�w�R6+���SxO!\27�dp=���/\4��^�Э���C,`�G�j,A�9p��Bj\31;��Cbo ��b\15��=�Zh�\3�`/�v�\1��U$c�٘\16R�e\15� دs�\6\19z�E�\11��4��\4��֓��\14�G ��\2�{b�b��(�\16o\31u�m\8�]������\5��\21�\17p�\12�_��;\7Lm�-bv3+��>I\20\26\18�\29{w}�%p��|\14�����=t�]\3\23\6E�8\22�^������a#q\7|F���6�H��A�\27<H\15�\16�\28�e�ɴ��1�\18A9Bhݠ!\17�q�(\31���\16� \16��o�Q�y!�Fs\23'.\20�=4�����sh�Bh���i�Y���)\22�p�&<=Y�386�E�\29���_�`A/���ń\2!�����\6�X�\26��\13���t\6��a��Q��\17\16�w��e 3U.P\2�\19�p�d7}���\29�\11��kW��/��\24D�}�(q��jx��\9��˕R�\15Ox��@�\8��\17�S��׭\2Z\"Ѵ]�{�\18>�/L�:�\31�m\7k)>`t�\19�\"�1�)`��8͖���������k-+\
�EYl�K\22�~\11Q\"�B�H��/�r��!틸�u�\18���e\29\28��x\"\2ړI�y\13�Z��_{����.�+\28#߻g\13�\23\15�\15�H,��\6ԾO��B�A����/����t��J_���\1�����?��\0086�[��-�L%�n\3���M���)�=NFw��=\12�&ӌR�=\14J�xϳ_'����X�\30��hl���0�\127T�]K9��pxWF�]9�E\0.^�_ǛOS!k��7\21��ӷ8���W\2\29�z�w6�0��0\4��vVJ�{�\28\
t�C_�\28zf=e\18nW�\31�G�\"�i�\28>���˾(P�\15�\12\6��\22:��\31\12ۯ\23����������f\8�F�� �(��[�a*T�~b��d>�|�[��q�\28M�G����@�\18:��1<�zjj�w��\14��+/c\20�bE�*�x�y*)��R\
\31�gW\"�ݭ(B/ߍ���߾��ߩ�uHt��Z]e�#��/a\22\5\8��l|�I\17ao��*�\18f)\21�t\11)��D\23��s�O���\18F�n�˔\\�e���c��b>nmq���7P�#>�[�W�?�Ïs\31�G����Q\28a\11zX��e��#��w<F\30�7�\18_\"�\29O��D�u\17�9����e\14�\26\3��\2�\1�_����8?����\9�%;�\23��\29�m�;�����\9X�ԋ�c����^��}�!�c�c�K7G<:���0�$��'-L��岞# ���Ϣw���C�����1i�rx;x����,������1+e\30~��⤢\9�\27a=����))�\7q�\24X�r�\23�y���Фf��\8�.�D~{�@I\29L\"�\21&s�F�\"�b�\17�{�Z3��F�4+�%]�[,�C��CS\7��j\0^�vA컁z´0\8\15cֈ�'�6e�#\31�\26���ڠ5\28�q�\0���Ѐ��>舻�#��Q�u��vZ\8\0258�����d������\30�\31�%�f�vf~�e�\16�h|es�q�٣�~\21��)\13.�6�y��\20��(\31��h������s\28�5�[�#��\8�-ͩ��kݤ#G<�9vm�\15�+i���q}���1\16��1��3?\24�!a<*�p�}qyz��\13Nw!bm�j\29\8}�o\8dG|����@�\2Mdwķ� h\8�T�6�f\16Gc^��V��܎0+94>;l��\31*,�-4��?% �\23`g\27W�\"\15�OU\6���yٟ�V��\16�?h�\
B5��P\
�6>\5!\26\"q�L�\28��&���:�\19�f�a�$;\4Q�9P�������8\127S\31��g\7{=;߻է�8��6V\
��\19nGlz\3\21�MD[���\29ȼ�\12J�������*^���]�`P|�����yC_>���fT��6�Ò���\28�f\27�\
�F�\17�2�\1�:\7�3�>�\20�.L\29C|���t\29��\13[�\21\16\18v\0141�C|��\18\24�s���0��㡬zj }\"����.1X�q�➋�D���θC>=H<���r�JgL��gЧ�=�Io����w��呻�g@ON\13Z��\13�'~��%��8��y}��lg�\27��\0157rȡ�S�eX�n\28+�|\23��Ρ��\7\8���\12�\31h���c\0�/���T�������\11QY0\\ꌏ\1M��_\22�뎈�\28�8�\6�1����SR}��-�������k�1�B��\1��\21\127�{��������?���a\"�x\4�G\15JG�'lW�w�Ӿ뻬�}�\1pӷ��R6H:��-�\127+���A�`Aox�[���c\"���\15��w���m�\7G|__\7(�~\28�\"�\4o��[&���\15~�4��w��u\29�\22�XT�|N������~��ϼ�3���\0�;nd�\26��\27ԧ�l�ݬ\20\18Fa�����\22NM\127��G�o��[\19\0������^.�\31\2O||z�\29��\29���q��\1�7\9����w<�\18:(��w|\0�[��F\127{T��\15���\127����_�ؿ]�o'Y��;�[�\127��\24B��Z��Z��=�\127�\127a\3�\127�/-�^���\22!��)�ۀ\6ė�}$xA{\24x\23i�M)���!\26\18��\0]'��37�8a���\11\
�*KqE�bhS\23�Qj\8\27�\0250Kt��G��u\3r�\2�V��ڂ��\127に�OY]�����엺\3���UX$U���>4\26�ip��\22��0���\9��(ѻDQeO�Q\12�\0319Ė��0`\21eVA0�S��u�Y꣼o��\27��\0085�\15\12e��\29\5(-(���ṕX\5�\0061A���]�������\19�\"ȥ\127��#(GL\21\25���\6�Z���m4��$4�S\22������a����m�匀�V!\31F��w�\6�u\30�\14�R�}\26:yb�#���-Z�|;�}�\16]�UK���luڢ��h/����:0��4\9��֎�|�A�!\30�A��{t8��I�ƛ^9\29���52L3\17��\\קo���X�;�߹A�\11cFK��U/\20YU�����.��jJ4=�\31<¿�5ǳXOR� Y\29nm�E�z\7Z#n���㗰&��J�i�nm�U\22h����k���\19Kٯ��}�@���X}\
L�rƢ@;��qU��\8\127B\25\
4]\8A����؄ߑ���\29����\18��U�\19��\12�\21��7Q`�C�\27�G�t\17$y��Ѽ�.��\30�\27�X�]��-�@\22sӭ����+Vȏ\22\1�1.�X�?c4,�w\16������B�h�T�� �Ώ\4G�G\5(0E��\4Nc\29�0����\24ןX�?qŨǪ�F�L�\15H��5E�H\29\6��Ö�f�7�u��À��;�螒��:ϐÿ\27݄��酱�\127�\11�aD��(O\20M;�\11���痢\2��`�\24M�o#�k����T�M\12Y\14\9)�P\27��v\13W<v�,��̷#Ҝ��zGЕ.�xFr�\21\16��g�f\11T�\0\\K��Z�=��`��?�J\28��G��svu�|�d�mHyZ�y��x*\15�-����\127F4��",
  ["length"]=29397,
  ["minhyphenmax"]=1,
  ["minhyphenmin"]=1,
  ["n"]=4693,
 },
 ["version"]="1.001",
}