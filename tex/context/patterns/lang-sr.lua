return {
 ["comment"]="% generated by mtxrun --script pattern --convert",
 ["exceptions"]={
  ["characters"]="абвгдезиклмнопрстуцшјњћ",
  ["data"]="на-дно на-тка на-тка-ти на-тка-ше о-дно о-тка о-тка-ти о-тка-ше по-дно по-дне по-тку по-тки по-тке по-тка у-дно и-где и-гдје сву-где све-где сву-гдје све-гдје по-не-где по-не-гдје и-зби и-збе и-зба и-зби-ци и-зби-це и-зби-ца и-звит и-зим изо-ба-ру изо-ба-ри изо-ба-ре изо-ба-ра и-скок и-ско-ку и-ско-ка и-скон и-ско-ну и-ско-ни и-ско-на и-скру и-скре и-скри и-скра и-скрав и-спод и-спо-да и-стру и-стри и-стро и-стре и-стра на-ју на-ји на-јо на-је на-ја на-јам на-јест о-браз о-брет о-дви-ка о-дран о-дра-ти пре-двој ра-зму ра-зми ра-змо ра-зме ра-зма ра-зну ра-зни ра-зно ра-зне ра-зна ра-склоп ра-спе-лу ра-спе-ло ра-спе-ла ра-спе-ћа ра-спе-ћу ра-спе-ће ра-сту ра-сти ра-сте ра-ста ра-стом ра-стер ра-шћу ра-шћи ра-шћо ра-шће ра-шћа у-зно у-зна у-зни у-зник у-зрок у-ску у-ски у-ско у-ске у-ска ус-кос у-спио у-спео у-спор у-шћу у-шће у-шћа ин-те-рес тран-су тран-са тран-сом те-ле-ви-зор те-ле-ви-зо-ру те-ле-ви-зо-ром те-ле-ви-зо-ра те-ле-ви-зо-ри при-ти-сак при-ти-с-ком при-ти-с-ку при-ти-с-ка по-ја-ви-ће на-пу-шта про-гра-ми-ра-ње сни-ма-ња сни-ма-ње",
  ["length"]=1800,
  ["n"]=130,
 },
 ["metadata"]={
  ["mnemonic"]="sr",
  ["source"]="hyph-sr-cyrl",
  ["texcomment"]="% Serbian hyphenation patterns in Cyrillic script\
% \
% (more info about the licence to be added later)\
% \
% This file is part of hyph-utf8 package and resulted from\
% semi-manual conversions of hyphenation patterns into UTF-8 in June 2008.\
%\
% Source: srhyphc.tex (2003-06-09)\
% Author: Aleksandar Jelenak <ajelenak AT yahoo.com>, Dejan Muhamedagić\
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
% This is `srhyphc.tex' file. It contains hyphenation patterns for Serbian\
% language in the Cyrillic alphabet. TeX font encoding is T2A.\
%\
% This file is distributed under the terms of the GNU General Public License.\
% Latest version of the license is at <http://www.gnu.org/copyleft/gpl.html>.\
%\
% Version: 1.0a\
% Last change: 2003-06-09\
%\
% Credits:\
%  - Initial hyphenation patterns for T1 font encoding by Dejan Muhamedagić\
%  - Improvements and adaptation to T2A font encoding by Strahinja Radić\
%  - Further improvements and integration into one file by Aleksandar Jelenak\
%\
% Current maintainer: Aleksandar Jelenak <ajelenak AT yahoo.com>\
%\
% \\message{Serbian Cyrillic Hyphenation Patterns `srhyphc.tex' v1.0a <2003-06-09>}\
%\
% ",
 },
 ["patterns"]={
  ["characters"]="абвгдежзиклмнопрстуфхцчшђјљњћџ",
  ["data"]=".ђ2 .ћ2 .ч2 .ш2 .ж2 .а2б3алиј .а2б3анац .а2б3ерац .а2б3ерир .а2б3евак .а2б3ирит .а2б3ју .а2б3ла .а2б3лег .а2б3леп .а2б3лок .а2б3лу .а2б3ориг .а2б3реак .а2б3рог .а2б3узус .а2д3ерац .а2д3ј .а2д3лат .а2д3рен .а2д3рог .а2д3верб .а2н3а4е2ро .а2н3афиј .а2н3афрод .а2н3аго .а2н3акуз .а2н3алд .а2н3алфа .а2н3алг .а2н3амерт .а2н3андр .а2н3ант .а2н3апто .а2н3арх .а2н3егер .а2н3екл .а2н3екум .а2н3елек .а2н3енер .а2н3епи .а2н3ерг .а2н3ерит .а2н3есте .а2н3идр .а2н3ирид .а2н3изог .а2н3изом .а2н3изур .а2н3јон .а2н3офт .а2н3окс .а2н3опис .а2н3орг .а2н3орх .а2н3овар .а2набап .а2набат .а2набаз .а2набио .а2набол .а2надем .а2надипл .а2надоз .а2нафаз .а2нафила .а2нафон .а2нафор .а2наген .а2нагно .а2награ .а2нахор .а2нахро .а2накал .а2накам .а2накат .а2накеф .а2накла .а2накли .а2накој .а2накол .а2накрон .а2накру .а2налеп .а2налис .а2налит .а2нализ .а2намне .а2нанео .а2напла .а2напле .а2напне .а2напно .а2напро .а2напти .а2нарт .а2насар .а2насеи .а2наспаз .а2наста .а2настиг .а2настом .а2натим .а2натоц .а2натом .а2натре .а2натри .а2натро .а2неор .а3г2нос .а3г2ноз .а4е2ро .б2 .бе2ш3ћ .бе2ш3ч .бе2с3ц .бе2с3к .бе2с3п .бе2с3т .бе2з3алкохол .бе2з3атомск .бе2з3б .бе2з3д .бе2з3г .бе2з3и .бе2з3л .бе2з3љ .бе2з3м .бе2з3н .бе2з3њ .бе2з3о .бе2з3р .бе2з3у .бе2з3в .бе3с4крупул .бе3с4покоја .бе3с4покојн .бе3с4пора .бе3с4порн .бе3с4тид .бе3с4тија .бе3с4тиљ .бе3с4тилу .бе3с4трана .бе3с4трас .бе3с4твар .бе3з4беда .бе3з4бедн .бе3з4бели .бе3з4бједа .бе3з4бједн .бе3з4бол .бе3з4истан .бе3з4истен .бе3з4јач .бе3з4јак .бе3з4лоба .бе3з4лобн .бе3з4начај .бе3з4рача .бе3з4рачн .бе3з4уб .бе3з4уп .бе3з4вуча .бе3з4вучн .бе4о .бес4тселер .би4о .ц2 .д2 .џ2 .ди2с3акор .ди2с3јунк .ди2с3конт .ди2с3корд .ди2с3кре .ди2с3кри .ди2с3кур .ди2с3квал .ди2с3ло .ди2с3ориј .ди2с3парит .ди2с3пон .ди2с3поз .ди2с3проп .ди2с3тон .ди2с3трак .ф2 .г2 .ге4о .х2 .и2ш3ћ .и2ш3ч .и2ж3ђ .и2н3абруп .и2н3адек .и2н3афек .и2н3акце .и2н3акур .и2н3амор .и2н3аниц .и2н3аплик .и2н3апст .и2н3арт .и2н3аугур .и2н3аура .и2н3ед .и2н3ефек .и2н3ег .и2н3екс .и2н3екв .и2н3елиг .и2н3епц .и2н3евид .и2н3јек .и2н3јур .и2н3јуст .и2н3обл .и2н3офиц .и2н3окуп .и2н3опер .и2н3опор .и2н3опсе .и2н3умбр .и2н3унда .и2н3унк .и2н3утил .и2ноген .и2нокор .и2с3ц .и2с3к .и2с3п .и2с3т .и2з3аба .и2з3ака .и2з3анал .и2з3б .и2з3бија .и2з3бива .и2з3д .и2з3дај .и2з3г .и2з3и .и2з3л .и2з3љ .и2з3м .и2з3н .и2з3њ .и2з3о .и2з3р .и2з3у .и2з3в .и2з3ведб .и2з3веде .и2з3веди .и2з3ведн .и3с4как .и3с4кариот .и3с4кат .и3с4кин .и3с4кита .и3с4коч .и3с4конск .и3с4крам .и3с4крат .и3с4крен .и3с4крењ .и3с4крич .и3с4криш .и3с4криц .и3с4крит .и3с4крој .и3с4крса .и3с4крсн .и3с4купља .и3с4квас .и3с4кврч .и3с4лаб .и3с4лам .и3с4леђ .и3с4лед .и3с4лијеђ .и3с4лијед .и3с4лик .и3с4лин .и3с4љеђ .и3с4љед .и3с4лов .и3с4луш .и3с4луж .и3с4ме .и3с4мије .и3с4мје .и3с4паљив .и3с4пав .и3с4пира .и3с4плић .и3с4плит .и3с4покој .и3с4полин .и3с4пон .и3с4порав .и3с4права .и3с4прави .и3с4правк .и3с4прављ .и3с4правн .и3с4пупч .и3с4пур .и3с4ред .и3с4рк .и3с4таћ .и3с4такн .и3с4там .и3с4тар .и3с4тас .и3с4тави .и3с4тављ .и3с4тиц .и3с4тифан .и3с4тин .и3с4тир .и3с4точа .и3с4точн .и3с4точњ .и3с4ток .и3с4тори .и3с4трад .и3с4тран .и3с4трав .и3с4трић .и3с4триж .и3с4триц .и3с4труг .и3с4туп .и3с4уш .и3с4ук .и3с4ус .и3с4ут .и3з4бав .и3з4бичкава .и3з4блеушан .и3з4бојак .и3з4бојк .и3з4драв .и3з4гомет .и3з4гред .и3з4грн .и3з4грт .и3з4иђ .и3з4ид .и3з4ими .и3з4јежљ .и3з4лож .и3з4лог .и3з4лопаћ .и3з4лоз .и3з4ним .и3з4ној .и3з4олац .и3з4олат .и3з4олир .и3з4олов .и3з4рачи .и3з4раел .и3з4раиљ .и3з4ун .и3з4упч .и3з4вала .и3з4вале .и3з4вали .и3з4ваљи .и3з4валу .и3з4вижд .и3з4виискр .и3з4вија .и3з4вијен .и3з4вин .и3з4вињ .и3з4вир .и3з4витоп .и3з4вјед .и3з4војац .и3з4војц .и3з4вор .инте2р3а .инте2р3е .инте2р3и .инте2р3је .инте2р3о .инте2р3у .инте3р4ежџ .инте3р4егн .инте3р4еса .инте3р4есе .инте3р4еси .инте3р4есн .инте3р4есо .инте3р4есу .инте3р4ије .инте3р4огат .ист2к .из3бе2з3обр .из3бе2з3ум .из3г2н .из3ва2н3евр .из4оанем .из4оаном .из4обат .из4оброн .из4одим .из4один .из4одоз .из4офон .из4офот .из4огам .из4огео .из4оглос .из4огон .из4ограф .из4охал .из4охаз .из4охел .из4охиј .из4охим .из4охипс .из4охит .из4охор .из4охро .из4оклин .из4околон .из4олекс .из4олукс .из4омер .из4ометр .из4оморф .из4онеф .из4оном .из4опат .из4опер .из4опле .из4опол .из4опсеф .из4орах .из4осеи .из4осинт .из4осист .из4оскел .из4оскоп .из4остаз .из4осте .из4отах .из4отал .из4отер .из4отон .из4отоп .из4отро .иза3г2н .иза3т2к .изд2на .изд2но .изд2ну .изр2к .јури2с3к .јури2с3п .к2 .љ2 .м2 .н2 .на2д3жањ .на2д3ждр .на2д3же .на2д3жир .на2д3жив .на2д3жњ .на2д3жуп .на2д3игр .на2д3инж .на2д3ина .на2д3иск .на2д3јач .на2д3јах .на2д3јеч .на2д3јек .на2д3јез .на2д3јун .на2д3л .на2д3љ .на2д3оч .на2д3офи .на2д3ора .на2д3осе .на2д3осје .на2д3осо .на2д3рач .на2д3рашћ .на2д3ран .на2д3раст .на2д3реал .на2д3реп .на2д3руч .на2д3руг .на2д3рук .на2д3уч .на2д3удар .на2д3ум .на2д3в .на2ј3а .на2ј3е .на2ј3и .на2ј3о .на2ј3у .на3д2нев .на3д2нич .на3д2ниц .на3д4лан .на3д4леш .на3д4леж .на3д4вал .на3д4веси .на3д4вест .на3д4виј .на3д4вит .на3д4вла .на3д4воје .на3д4вор .на3ј4аш .на3ј4ажи .на3ј4ада .на3ј4аде .на3ј4ади .на3ј4ах .на3ј4ака .на3ј4ако .на3ј4ало .на3ј4ами .на3ј4амл .на3ј4амн .на3ј4арц .на3ј4ари .на3ј4арм .на3ј4ати .на3ј4аук .на3ј4ава .на3ј4аве .на3ј4ави .на3ј4ављ .на3ј4ази .на3ј4еже .на3ј4ежи .на3ј4ежу .на3ј4ец .на3ј4еда .на3ј4еди .на3ј4едн .на3ј4едр .на3ј4ести .на3ј4етк .на3ј4езд .на3ј4езн .на3ј4урен .на3ј4ури .на3т2ках .на3т2кам .на3т2касм .на3т2каст .наг2н .наг2њ .ну2с3пос .ну2с3про .ну2з3бел .ну2з3биљ .ну2з3љуб .ну2з3ре .ну2з3рје .ну2з3уж .о2б3игр .о2б3истин .о2б3истињ .о2б3ј .о2б3лај .о2б3лакш .о2б3лам .о2б3ласк .о2б3лећ .о2б3леж .о2б3леден .о2б3лег .о2б3леп .о2б3лет .о2б3лијеж .о2б3лијег .о2б3лијеп .о2б3лијет .о2б3лист .о2б3лив .о2б3лизат .о2б3лизав .о2б3лизи .о2б3љ .о2б3лока .о2б3луч .о2б3лук .о2б3ору .о2б3р .о2б3уж .о2б3убож .о2б3уд .о2б3уме .о2б3уми .о2б3умр .о2б3уз .о2д3жал .о2д3жаљ .о2д3же .о2д3жи .о2д3жв .о2д3арг .о2д3и2з3д .о2д3и2з3в .о2д3игр .о2д3иск .о2д3исти .о2д3ј .о2д3л .о2д3љ .о2д3ок .о2д3онд .о2д3онл .о2д3оно .о2д3ону .о2д3озд .о2д3озг .о2д3р .о2д3уч .о2д3ук .о2д3ул .о2д3ум .о2д3уве .о2д3уви .о2д3узд .о2д3узе .о2д3узи .о2д3узл .о2д3в .о3б4јеш .о3б4јек .о3б4јер .о3б4јеси .о3б4јет .о3б4љан .о3б4љут .о3б4љуз .о3б4рђ .о3б4рч .о3б4рш .о3б4раћ .о3б4рашч .о3б4рашн .о3б4раже .о3б4рамб .о3б4ран .о3б4рањ .о3б4рат .о3б4раза .о3б4разд .о3б4рази .о3б4разн .о3б4разо .о3б4разу .о3б4ређ .о3б4реч .о3б4реж .о3б4рец .о3б4ред .о3б4рем .о3б4рес .о3б4рети .о3б4ретн .о3б4рич .о3б4риц .о3б4риј .о3б4рис .о3б4рит .о3б4рив .о3б4рк .о3б4рл .о3б4рљ .о3б4рн .о3б4роћ .о3б4роч .о3б4рок .о3б4рон .о3б4рова .о3б4ровц .о3б4рс .о3б4руч .о3б4руш .о3б4рук .о3б4рун .о3б4рус .о3д4јећ .о3д4јен .о3д4јев .о3д4лаж .о3д4лаг .о3д4лака .о3д4лаз .о3д4луч .о3д4лук .о3д4рж .о3д4раћ .о3д4рачи .о3д4раж .о3д4рана .о3д4ране .о3д4рани .о3д4рано .о3д4рану .о3д4рапа .о3д4рапи .о3д4рапљ .о3д4раз .о3д4ређ .о3д4ред .о3д4рем .о3д4рен .о3д4рич .о3д4риш .о3д4риб .о3д4риц .о3д4рин .о3д4рињ .о3д4рл .о3д4рљ .о3д4рн .о3д4рон .о3д4роњ .о3д4рп .о3д4рт .о3д4руж .о3д4руг .о3д4рвеч .о3д4рвен .о3д4рвењ .о3д4важ .о3д4вај .о3д4веса .о3д4весн .о3д4вест .о3д4вић .о3д4викав .о3д4викн .о3д4вис .о3д4вој .о3т2ках .о3т2кам .о3т2касм .о3т2каст .обе2ш3ћ .обе2ш3ч .обе2с3ц .обе2с3к .обе2с3п .обе2с3т .обе2з3б .обе2з3д .обе2з3г .обе2з3ј .обе2з3л .обе2з3љ .обе2з3м .обе2з3н .обе2з3о .обе2з3р .обе2з3у .обе2з3в .обе3с4тан .обе3с4тиј .обе3с4тран .обе3з4нач .обе3з4нан .обе3з4нањ .обе3з4уб .обе3з4виј .од3г2н .од3м2н .ода3д2н .ода3г2н .по2д3адм .по2д3игр .по2д3изв .по2д3ј .по2д3лакат .по2д3лакт .по2д3лећ .по2д3леж .по2д3лег .по2д3леп .по2д3лет .по2д3лијећ .по2д3лијеж .по2д3лијег .по2д3лијеп .по2д3лијет .по2д3лист .по2д3лиз .по2д3љут .по2д3лок .по2д3лом .по2д3луч .по2д3луж .по2д3луп .по2д3оч .по2д3ош .по2д3оф .по2д3окн .по2д3ра2з3д .по2д3рад .по2д3рам .по2д3ран .по2д3рањ .по2д3рас .по2д3равн .по2д3равњ .по2д3разр .по2д3разу .по2д3реп .по2д3рес .по2д3рез .по2д3рик .по2д3рит .по2д3рож .по2д3рон .по2д3ров .по2д3руча .по2д3ручи .по2д3ручн .по2д3руб .по2д3рук .по2д3упла .по2д3усм .по2д3усн .по2д3вариј .по2д3веч .по2д3веж .по2д3вез .по2д3вик .по2д3вил .по2д3вир .по2д3влаш .по2д3влас .по2д3вођ .по2д3вож .по2д3вод .по2д3воз .по2д3врћ .по2д3врж .по2д3враћ .по2д3врат .по2д3врг .по2д3врис .по2д3врс .по2д3вућ .по2ст3егз .по2ст3инду .по2ст3лим .по2ст3онк .по2ст3опер .по3д2нев .по3д4јеч .по3д4јен .по3г2н .по3м2н .по3м2њ .по3р2ђ .по3т2ках .по3т2кам .по3т2кат .по3т2кав .пре2д3же .пре2д3жи .пре2д3ид .пре2д3игр .пре2д3испи .пре2д3исто .пре2д3истр .пре2д3изб .пре2д3ј .пре2д3обј .пре2д3одре .пре2д3окус .пре2д3осе .пре2д3осје .пре2д3осв .пре2д3рач .пре2д3рад .пре2д3рат .пре2д3руч .пре2д3убеђ .пре2д3убијеђ .пре2д3убјеђ .пре2д3удар .пре2д3угов .пре2д3упис .пре2д3усло .пре2д3увер .пре2д3увјер .пре2д3увјет .пре2д3в .пре3д4јен .пре3д4вај .пре3д4вар .пре3д4вест .пре3д4воја .пре3д4воје .пре3д4воји .пре3д4вор .пре3д4вос .пре3т2ках .пре3т2кам .пре3т2кат .пред3м2н .пред3м2њ .про3г2н .про3т2ка .про3т2ки .проти2в3акц .проти2в3оф .проти2в3отр .проти2в3р .проти2в3уд .проти2в3ус .р2 .ра2ш3ћ .ра2ш3ч .ра2ж3ђ .ра2с3ц .ра2с3к .ра2с3п .ра2с3т .ра2з3анал .ра2з3б .ра2з3д .ра2з3е .ра2з3г .ра2з3и .ра2з3л .ра2з3љ .ра2з3м .ра2з3н .ра2з3њ .ра2з3оба .ра2з3обл .ра2з3обр .ра2з3од .ра2з3орат .ра2з3орав .ра2з3орт .ра2з3ору .ра2з3от .ра2з3р .ра2з3уда .ра2з3удб .ра2з3уди .ра2з3улар .ра2з3умр .ра2з3уве .ра2з3узд .ра2з3узе .ра2з3узи .ра2з3в .ра3ш4ћењ .ра3ш4чић .ра3с4как .ра3с4канд .ра3с4кин .ра3с4клад .ра3с4клањ .ра3с4клап .ра3с4клон .ра3с4клопа .ра3с4клопи .ра3с4клопљ .ра3с4кош .ра3с4кроп .ра3с4пај .ра3с4пав .ра3с4пета .ра3с4пете .ра3с4пети .ра3с4пето .ра3с4пику .ра3с4пињ .ра3с4плин .ра3с4плињ .ра3с4пн .ра3с4полож .ра3с4пон .ра3с4пор .ра3с4прав .ра3с4прем .ра3с4рђ .ра3с4рд .ра3с4ре .ра3с4тај .ра3с4тан .ра3с4тат .ра3с4тав .ра3с4тењ .ра3с4тил .ра3с4тињ .ра3с4тир .ра3с4тис .ра3с4тит .ра3с4тој .ра3с4трел .ра3с4трет .ра3с4трој .ра3с4трт .ра3с4тућ .ра3с4туп .ра3с4тур .ра3з4башур .ра3з4бад .ра3з4бан .ра3з4бар .ра3з4бау .ра3з4бој .ра3з4бор .ра3з4ев .ра3з4гађ .ра3з4грт .ра3з4иђ .ра3з4ић .ра3з4ид .ра3з4иј .ра3з4ин .ра3з4ир .ра3з4из .ра3з4лаг .ра3з4лаз .ра3з4лич .ра3з4лик .ра3з4лож .ра3з4лог .ра3з4лоз .ра3з4мећ .ра3з4мет .ра3з4мрск .ра3з4нат .ра3з4ред .ра3з4роч .ра3з4рок .ра3з4вал .ра3з4веде .ра3з4вест .ра3з4вић .ра3з4виго .ра3з4вија .ра3з4вије .ра3з4вију .ра3з4вит .ра3з4вој .ра3з4вон .ра3з4врћ .ра3з4враћ .ра3з4врат .ра3з4врт .ра4с5турч .раз3д2ни .раз3г2н .раза3г2н .раза3т2ка .с2 .су2б3а .су2б3инв .су2б3јунк .су2б3л .су2б3окс .су2б3орд .су2б3реп .су2б3рог .су3б4аш .супе2р3а .супе2р3е .супе2р3и .супе2р3о .супе2р3у .супе3р4иор .тран2с3а .тран2с3ц .тран2с3е .тран2с3к .тран2с3л .тран2с3м .тран2с3н .тран2с3о .тран2с3п .тран2с3т .тран2с3у .тран2с3в .тран3с4еп .тран3с4кри .тран3с4уд .тран3с4ум .у2ш3ћ .у2ш3ч .у2с3ц .у2с3к .у2с3п .у2с3талас .у2с3тара .у2с3тећ .у2с3тег .у2с3тер .у2с3тов .у2с3трћ .у2с3трч .у2с3трај .у2с3трал .у2с3треб .у2с3треп .у2с3трес .у2с3трг .у2с3трк .у2с3трн .у2с3трп .у2с3тућ .у2с3тум .у2с3тур .у2с3тврђ .у2с3тврд .у2з3б .у2з3д .у2з3г .у2з3и .у2з3игр .у2з3инат .у2з3искр .у2з3л .у2з3љ .у2з3м .у2з3н .у2з3њ .у2з3обест .у2з3обијест .у2з3охо .у2з3орат .у2з3орав .у2з3р .у2з3угар .у2з3в .у3г2ми .у3г2н .у3с4как .у3с4клађ .у3с4клад .у3с4ко .у3с4куп .у3с4пало .у3с4пав .у3с4пеш .у3с4пех .у3с4пел .у3с4пем .у3с4пент .у3с4пет .у3с4пев .у3с4пија .у3с4пије .у3с4пијуш .у3с4пикуш .у3с4пјеш .у3с4пјех .у3с4пјел .у3с4пјем .у3с4пјет .у3с4пјев .у3с4пон .у3с4пора .у3с4пореч .у3с4порен .у3с4порењ .у3с4пори .у3с4пособ .у3с4према .у3с4преми .у3с4рђ .у3с4рж .у3с4ра .у3с4рд .у3с4ре .у3с4ријед .у3с4рк .у3с4рљ .у3с4рн .у3с4рп .у3з4бор .у3з4диц .у3з4лан .у3з4лат .у3з4лић .у3з4лиц .у3з4лим .у3з4лит .у3з4лов .у3з4лудоб .у3з4нач .у3з4нак .у3з4неве .у3з4невје .у3з4нич .у3з4ниц .у3з4ној .у3з4рет .у3з4рев .у3з4ријет .у3з4ријев .у3з4рн .у3з4рњ .у3з4роч .у3з4рока .у3з4роко .у3з4року .у3з4руј .у3з4ван .у3з4ват .у3з4виж .у3з4вија .у3з4вије .у3з4вијо .у3з4вију .у3з4вој .у4с5кош .у4с5коко .у4с5коле .у4с5колу .у4с5ком .у4с5копа .у4с5кора .у4с5коси .у4с5котр .у4с5ков .уза3т2ка .ва2н3евр .ва2н3устав .з2 .за3г2н .за3т2ка 2ђ1ђ 2ђ1ћ 2ђ1ч 2ђ1ш 2ђ1ж 2ђ1б 2ђ1ц 2ђ1д 2ђ1џ 2ђ1ф 2ђ1г 2ђ1х 2ђ1к 2ђ1љ 2ђ1м 2ђ1н 2ђ1р 2ђ1с 2ђ1з 2ћ1ђ 2ћ1ћ 2ћ1ч 2ћ1ш 2ћ1ж 2ћ1б 2ћ1ц 2ћ1д 2ћ1џ 2ћ1ф 2ћ1г 2ћ1х 2ћ1к 2ћ1љ 2ћ1м 2ћ1н 2ћ1р 2ћ1с 2ћ1з 2ч1ђ 2ч1ћ 2ч1ч 2ч1ш 2ч1ж 2ч1б 2ч1ц 2ч1д 2ч1џ 2ч1ф 2ч1г 2ч1х 2ч1ј 2ч1к 2ч1љ 2ч1м 2ч1н 2ч1р 2ч1с 2ч1т 2ч1з 2ч3вј 2ч3вл 2ч3вљ 2чв. 2ш1ђ 2ш1ш 2ш1ж 2ш1б 2ш1д 2ш1џ 2ш1ф 2ш1г 2ш1х 2ш1ј 2ш1р 2ш1с 2ш1з 2ш3чв 2ш3цј 2ш3цв 2ш3мј 2ш3мл 2ш3мљ 2ш3пј 2ш3пл 2ш3пљ 2ш3тј 2ш3тл 2ш3тљ 2ш3вл 2ш3вљ 2шћ. 2шч. 2шчћ 2шчч 2шчш 2шчж 2шчб 2шчц 2шчд 2шчџ 2шчф 2шчг 2шчх 2шчј 2шчк 2шчљ 2шчм 2шчн 2шчр 2шчс 2шчт 2шчз 2шц. 2шцћ 2шцч 2шцш 2шцж 2шцб 2шцц 2шцд 2шцџ 2шцф 2шцг 2шцх 2шцк 2шцљ 2шцм 2шцн 2шцр 2шцс 2шцт 2шцз 2шк. 2шкђ 2шкћ 2шкч 2шкш 2шкж 2шкб 2шкц 2шкд 2шкџ 2шкф 2шкг 2шкх 2шкк 2шкм 2шкн 2шкс 2шкт 2шкз 2шљ. 2шм. 2шмђ 2шмч 2шмш 2шмж 2шмб 2шмц 2шмд 2шмџ 2шмф 2шмг 2шмх 2шмк 2шмм 2шмн 2шмс 2шмт 2шмз 2шн. 2шп. 2шпђ 2шпч 2шпш 2шпж 2шпб 2шпц 2шпд 2шпџ 2шпф 2шпг 2шпх 2шпк 2шпм 2шпн 2шпс 2шпт 2шпз 2шт. 2штђ 2штч 2штш 2штж 2штб 2штц 2штд 2штџ 2штф 2штг 2штх 2штк 2штм 2штн 2штс 2штт 2штз 2шв. 2швђ 2швч 2швш 2швж 2швб 2швц 2швд 2швџ 2швф 2швг 2швх 2швк 2швм 2швн 2швс 2швт 2швз 2ж1ћ 2ж1ч 2ж1ш 2ж1ж 2ж1ц 2ж1џ 2ж1ф 2ж1х 2ж1ј 2ж1к 2ж1р 2ж1с 2ж1т 2ж1з 2ж3бј 2ж3бл 2ж3бљ 2ж3бр 2ж3дј 2ж3дл 2ж3дљ 2ж3дв 2ж3гј 2ж3гл 2ж3гљ 2ж3гр 2ж3гв 2ж3мј 2ж3мл 2ж3мљ 2ж3мр 2ж3вл 2ж3вљ 2жђ. 2жб. 2жбђ 2жбч 2жбш 2жбж 2жбб 2жбц 2жбд 2жбџ 2жбф 2жбг 2жбх 2жбк 2жбм 2жбн 2жбс 2жбт 2жбз 2жд. 2ждч 2ждш 2ждб 2ждц 2ждд 2ждџ 2ждф 2ждг 2ждх 2ждк 2ждм 2ждн 2ждс 2ждт 2ждз 2жг. 2жгч 2жгш 2жгж 2жгб 2жгц 2жгд 2жгџ 2жгф 2жгг 2жгх 2жгк 2жгм 2жгн 2жгс 2жгт 2жгз 2жл. 2жљ. 2жм. 2жмђ 2жмч 2жмш 2жмж 2жмб 2жмц 2жмд 2жмџ 2жмф 2жмг 2жмх 2жмк 2жмм 2жмн 2жмс 2жмт 2жмз 2жн. 2жњ. 2жвђ 2жвч 2жвш 2жвж 2жвб 2жвц 2жвд 2жвџ 2жвф 2жвг 2жвх 2жвк 2жвм 2жвн 2жвс 2жвт 2жвз 2а1 2б1ђ 2б1ћ 2б1ч 2б1ш 2б1ж 2б1б 2б1ц 2б1д 2б1џ 2б1ф 2б1г 2б1х 2б1к 2б1м 2б1н 2б1с 2б1т 2б1з 2бј. 2бл. 2бљ. 2бр. 2ц1ђ 2ц1ћ 2ц1ч 2ц1ш 2ц1ж 2ц1б 2ц1ц 2ц1д 2ц1џ 2ц1ф 2ц1г 2ц1х 2ц1к 2ц1љ 2ц1м 2ц1н 2ц1с 2ц1т 2ц1з 2ц3вл 2ц3вљ 2цј. 2цр. 2цв. 2д1ђ 2д1ћ 2д1ч 2д1ш 2д1б 2д1ц 2д1д 2д1џ 2д1ф 2д1г 2д1х 2д1к 2д1м 2д1н 2д1с 2д1т 2д1з 2д3вл 2д3вљ 2д3вр 2џ1ђ 2џ1ћ 2џ1ч 2џ1ш 2џ1ж 2џ1б 2џ1ц 2џ1д 2џ1џ 2џ1ф 2џ1г 2џ1х 2џ1ј 2џ1к 2џ1љ 2џ1м 2џ1н 2џ1р 2џ1с 2џ1т 2џ1з 2џ. 2дј. 2дл. 2дљ. 2др. 2дв. 2е1 2ф1ђ 2ф1ћ 2ф1ч 2ф1ш 2ф1ж 2ф1б 2ф1ц 2ф1д 2ф1џ 2ф1ф 2ф1г 2ф1х 2ф1к 2ф1м 2ф1н 2ф1с 2ф1т 2ф1з 2фј. 2фл. 2фљ. 2фр. 2г1ђ 2г1ћ 2г1ч 2г1ш 2г1ж 2г1б 2г1ц 2г1д 2г1џ 2г1ф 2г1г 2г1х 2г1к 2г1м 2г1н 2г1с 2г1т 2г1з 2г3вј 2г3вл 2г3вљ 2г3вр 2гј. 2гл. 2гљ. 2гр. 2гв. 2х1ђ 2х1ћ 2х1ч 2х1ш 2х1ж 2х1б 2х1ц 2х1д 2х1џ 2х1ф 2х1г 2х1х 2х1к 2х1м 2х1н 2х1с 2х1т 2х1з 2х3вј 2х3вл 2х3вљ 2х3вр 2хј. 2хл. 2хљ. 2хр. 2хв. 2хвђ 2хвч 2хвш 2хвж 2хвб 2хвц 2хвд 2хвџ 2хвф 2хвг 2хвх 2хвк 2хвм 2хвн 2хвс 2хвт 2хвз 2и1 2ј1ђ 2ј1ћ 2ј1ч 2ј1ш 2ј1ж 2ј1б 2ј1ц 2ј1д 2ј1џ 2ј1ф 2ј1г 2ј1х 2ј1ј 2ј1к 2ј1љ 2ј1м 2ј1н 2ј1р 2ј1с 2ј1т 2ј1з 2к1ђ 2к1ћ 2к1ч 2к1ш 2к1ж 2к1б 2к1ц 2к1д 2к1џ 2к1ф 2к1г 2к1х 2к1к 2к1м 2к1н 2к1с 2к1т 2к1з 2к3вј 2к3вл 2к3вљ 2кј. 2кл. 2кљ. 2кр. 2кв. 2љ1ђ 2љ1ћ 2љ1ч 2љ1ш 2љ1ж 2љ1б 2љ1ц 2љ1д 2љ1џ 2љ1ф 2љ1г 2љ1х 2љ1ј 2љ1к 2љ1љ 2љ1м 2љ1н 2љ1р 2љ1с 2љ1т 2љ1з 2м1ђ 2м1ћ 2м1ч 2м1ш 2м1ж 2м1б 2м1ц 2м1д 2м1џ 2м1ф 2м1г 2м1х 2м1к 2м1м 2м1н 2м1с 2м1т 2м1з 2мј. 2мл. 2мљ. 2мр. 2н1ђ 2н1ћ 2н1ч 2н1ш 2н1ж 2н1б 2н1ц 2н1д 2н1џ 2н1ф 2н1г 2н1х 2н1к 2н1љ 2н1м 2н1н 2н1р 2н1с 2н1т 2н1з 2о1 2пј. 2пл. 2пљ. 2пр. 2р1ђ 2р1ћ 2р1ч 2р1ш 2р1ж 2р1б 2р1ц 2р1д 2р1џ 2р1ф 2р1г 2р1х 2р1ј 2р1к 2р1љ 2р1м 2р1н 2р1р 2р1с 2р1т 2р1з 2с1ђ 2с1ћ 2с1ч 2с1ш 2с1ж 2с1б 2с1д 2с1џ 2с1ф 2с1г 2с1х 2с1с 2с1з 2с3кј 2с3кљ 2с3тл 2с3вљ 2сц. 2сцђ 2сцћ 2сцч 2сцш 2сцж 2сцб 2сцц 2сцд 2сцџ 2сцф 2сцг 2сцх 2сцк 2сцљ 2сцм 2сцн 2сцр 2сцс 2сцт 2сцз 2сј. 2ск. 2скђ 2скћ 2скч 2скш 2скж 2скб 2скц 2скд 2скџ 2скф 2скг 2скх 2скк 2скм 2скн 2скс 2скт 2скз 2сл. 2сљ. 2см. 2смђ 2смћ 2смч 2смш 2смж 2смб 2смц 2смд 2смџ 2смф 2смг 2смх 2смк 2смм 2смн 2смс 2смт 2смз 2сн. 2сњ. 2сп. 2спђ 2спћ 2спч 2спш 2спж 2спб 2спц 2спд 2спџ 2спф 2спг 2спх 2спк 2спм 2спн 2спп 2спс 2спт 2спв 2спз 2ср. 2ст. 2стђ 2стћ 2стч 2стш 2стж 2стб 2стц 2стд 2стџ 2стф 2стг 2стх 2стк 2стм 2стн 2стп 2стс 2стт 2стз 2св. 2свђ 2свћ 2свч 2свш 2свж 2свб 2свц 2свд 2свџ 2свф 2свг 2свх 2свк 2свм 2свн 2свп 2свс 2свт 2свв 2свз 2т1ђ 2т1ћ 2т1ч 2т1ш 2т1ж 2т1б 2т1ц 2т1д 2т1џ 2т1ф 2т1г 2т1х 2т1к 2т1м 2т1н 2т1п 2т1с 2т1т 2т1з 2т3вј 2т3вл 2т3вљ 2тј. 2тл. 2тљ. 2тр. 2тв. 2у1 2в1ђ 2в1ћ 2в1ч 2в1ш 2в1ж 2в1б 2в1ц 2в1д 2в1џ 2в1ф 2в1г 2в1х 2в1к 2в1м 2в1н 2в1п 2в1с 2в1т 2в1в 2в1з 2вј. 2вл. 2вљ. 2вр. 2з1ђ 2з1ћ 2з1ч 2з1ш 2з1ж 2з1ц 2з1џ 2з1ф 2з1х 2з1к 2з1п 2з1с 2з1з 2з3бљ 2з3дл 2з3дљ 2з3дв 2з3гј 2з3гљ 2з3мл 2з3мр 2з3вл 2з3вљ 2зб. 2збђ 2збћ 2збч 2збш 2збж 2збб 2збц 2збд 2збџ 2збф 2збг 2збх 2збк 2збм 2збн 2збп 2збс 2збв 2збз 2зд. 2здђ 2здћ 2здч 2здш 2здб 2здц 2здд 2здџ 2здф 2здг 2здх 2здк 2здм 2здн 2здп 2здс 2здз 2зг. 2згђ 2згћ 2згч 2згж 2згб 2згц 2згд 2згџ 2згф 2згг 2згх 2згк 2згм 2згн 2згп 2згс 2згз 2зј. 2зл. 2зљ. 2зм. 2змђ 2змћ 2змч 2змш 2змж 2змб 2змц 2змд 2змџ 2змф 2змг 2змх 2змк 2змм 2змн 2змп 2змс 2змв 2змз 2зн. 2зњ. 2зр. 2зв. 2звђ 2звћ 2звч 2звш 2звж 2звб 2звц 2звд 2звџ 2звф 2звг 2звх 2звк 2звм 2звн 2звп 2звс 2звв 2звз 3ч2лан 3ч2лањ 3б2дењ 3б2дет 3б2дјењ 3б2дјет 3ц2мач 3ц2мак 3ц2миз 3ц2мок 3г2дегод. 3г2декад 3г2декак 3г2дјегод. 3г2дјекад 3г2дјекак 3г2мил 3г2миљ 3г2миз 3г2нај 3г2нежђ 3г2нев 3г2незд 3г2нијежђ 3г2нијезд 3г2њав 3г2њеч 3г2њес 3г2њет 3г2њев 3г2њил 3г2њиљ 3г2њио 3г2њит 3г2њур 3г2ној 3г2нос 3г2ноз 3х2тел 3х2тењ 3х2тети 3х2тев 3х2тјел 3х2тјењ 3х2тјети 3х2тјев 3к2неж 3к2нез 3к2њиж 3к2њиг 3м2наж 3м2нож 3м2ног 3п2сич 3п2сик 3п2сов 3п2суј 3р2ђа 3с2фер 3т2маст 3т2мул 3т2муљ 3т2муо 3т2мур 4р3је. 4р3јем ч2в ш2ч ш2л ш2љ ш2м ш2н ш2п ш2т ш2в ж2ђ ж2б ж2д ж2г ж2л ж2љ ж2м ж2н ж2в а3а а3е а3и а3о а3у б2ј б2л б2љ б2р ц2ј ц2р ц2в д2ж д2ј д2л д2љ д2р д2в е3а е3е е3и е3о е3у ф2ј ф2л ф2љ ф2р г2л г2љ г2р г2в х2л х2љ х2р х2в и3а и3е и3и и3о и3у к2л к2љ к2р к2в л2ј м2л м2љ м2р не3г2де. не3г2дје. ни3г2де. ни3г2дје. о3а о3е о3и о3о о3у п2ј п2л п2љ п2р с2ц с2к с2л с2љ с2м с2н с2п с2р с2в т2ј т2л т2в у3а у3е у3и у3о у3у в2л в2љ в2р з2б з2д з2г з2ј з2л з2љ з2м з2н з2р з2в",
  ["length"]=28148,
  ["minhyphenmax"]=1,
  ["minhyphenmin"]=1,
  ["n"]=2425,
 },
 ["version"]="1.001",
}