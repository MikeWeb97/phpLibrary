-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 11:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `book_publish_id` int(11) NOT NULL,
  `book_description` text NOT NULL,
  `book_price` float NOT NULL,
  `book_quantity` int(11) NOT NULL,
  `book_image` varchar(255) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `book_category_id`, `book_publish_id`, `book_description`, `book_price`, `book_quantity`, `book_image`) VALUES
(25, 'Simbolul pierdut - Dan Brown ', 5, 0, 'Romanul este rezultatul a cinci ani de cercetare si documentare, iar actiunea se concentreaza in 12 ore, in care eroul de la Harvard, profesorul Robert Langdon, ne conduce alert si codificat in culisele tainice ale masoneriei. \"Am fost intotdeauna fascinat de puterile oculte, de societatile secrete. Am crescut intr-un oras din New England, unde exista o loja masonica deasupra teatrului local si voiam sa aflu ce se intampla acolo\" - declara Dan Brown cu prilejul lansarii. La numai o saptamana de la punerea sa in vanzare, \"Simbolul pierdut\" confirma toate asteptarile specialistilor: 2 milioane de exemplare vandute, dupa cum anunta editura americana Doubleday. Editura RAO este initiatoarea Fenomenului Dan Brown in Romania si a publicat seria completa de romane apartinand autorului: \"Codul lui Da Vinci\", \"Fortareata digitala\", \"Ingeri si demoni\".', 10, 99, 'simbol-pierdut.jpg'),
(26, 'Secretele succesului - Dale Carnegie', 4, 0, 'Dale Carnegie spunea ca â€žsuccesul inseamna sa obtii ceea ce vrei, iar fericirea inseamna sa vrei ceea ce ai obtinutâ€œ.\r\n\r\nDar ce anume isi doresc oamenii? Ei bine, de cele mai multe ori, e vorba despre o cariera ascendenta, prieteni de incredere, o familie iubitoare, un trai decentâ€¦ si altele asemenea. Desigur, motivele pentru care un om isi doreste ceva anume sunt complet personale, insa metodele prin care isi poate atinge obiectivul sunt general valabile. Iar metodele din cartea de fata au fost testate de peste 15 milioane de cititori de pe cinci continente, pe parcursul a trei sferturi de secol. Volumul de fata a ajuns, cu timpul, sa fie cea mai vanduta carte motivationala publicata vreodata.', 8, 99, 'Secretele Succesului.jpg'),
(28, 'Scurta istorie a omenirii - Yuval Noah Harari ', 6, 0, 'Acum 100.000 de ani, pe pamint existau cel putin sase specii de oameni. Astazi exista una singura: noi, Homo sapiens. Ce s-a intimplat cu celelalte? Si cum am ajuns sa fim stapinii planetei? De la inceputurile speciei noastre si rolul pe care l-a jucat in ecosistemul global pina in modernitate, Sapiens imbina istoria si stiinta pentru a pune in discutie tot ce stim despre noi insine, ne arata cum ne-am unit ca sa construim orase, regate si imperii, cum am ajuns sa credem in zei, in legi si in carti, dar si cum am devenit sclavii birocratiei, ai consumerismului si ai cautarii fericirii. De asemenea, ne indeamna sa privim in viitor, caci de citeva decenii am inceput sa incalcam legile selectiei naturale care au guvernat viata in ultimii patru miliarde de ani. Dobindim capacitatea de a modela nu doar lumea din jurul nostru, ci si pe noi insine. Incotro ne duce aceasta si ce vrem sa devenim?', 13, 98, 'Sapiens.jpg'),
(29, 'Copilul invizibil - Gaspar Gyorgy ', 7, 0, 'Gaspar Gyorgy este psiholog clinician si psihoterapeut relational, avand specializare in hipnoza clinica, psihoterapia de familie si psihoterapia integrativa.\r\nProfeseaza in domeniul sanatatii relationale de peste zece ani. Este membru fondator si presedinte al Asociatiei Multiculturale de\r\nPsihologie si Psihoterapie, unde coordoneaza programul de formare in psihoterapia familiei si eâ€¯responsabil pentru dezvoltarea strategiei de colaborare europeano-americana in domeniul psihologiei si al psihoterapiei relationale.\r\n\r\nDetine un cabinet privat in Bucuresti, unde acorda servicii de consiliere si psihoterapie pentru copii, adolescenti si adulti, cupluri si familii.\r\n\r\nâ€žCopilul invizibil ii invita pe parinti sa descopere metodele esentiale prin care isi pot ajuta copiii sa creasca frumos â€” punand accent pe intelegerea de sine a parintilor. Unul dintre cei mai relevanti predictori ai dezvoltarii unui copil provine din maniera in care parintele sau cauta, avand mintea deschisa, conexiunea emotionala cu propriul sau copil interior. Aceasta carte se bazeaza pe stiinta si e plina de sfaturi practice, menite sa-i ajute atat pe copii, cat si pe parinti, sa evolueze.â€œ\r\n', 9, 99, 'Copilul.jpg'),
(30, 'Manualul dictatorului - B.B. de Mesquita', 8, 0, 'Cum reusesc oamenii corupti sa ajunga la putere? Cum este posibil ca pe teritorii bogate in resurse naturale populatia sa traiasca la limita subzistentei? Pe baza unor exemple din epoci si zone geografice diferite â€“ de la Iuliu Cezar pina la liderul mafiot Paul Castellano, de la administratiile Bush sau Obama pina la situatia din Pakistan â€“, politologii Bruce Bueno de Mesquita si Alastair Smith incearca sa explice comportamentele abuzive caracteristice multor lideri politici sau din domeniul afacerilor. Rezultatul este o fascinanta imagine a jocului puterii, in cadrul caruia una dintre cele mai importante reguli este sa-ti rasplatesti intotdeauna sustinatorii.', 11, 99, 'Manual.jpg'),
(31, 'JAMILA CUISINE. Cele mai iubite retete - Geanina Staicu', 9, 0, ' Povestea proiectului JamilaCuisine a inceput in 2012. Timizi si cu resurse minime, am purces in ceea ce urma sa se dovedeasca a fi cea mai frumoasa aventura din viata noastra de pana acum. Am muncit enorm, am mai si gresit, insa am continuat sa facem exact ce ne place mai mult: retete video, infatisate pas cu pas, pentru toti cei care ne urmaresc activitatea si ne indragesc.\r\n\r\nDesi intotdeauna voi va bucurati de retetele noastre in forma finala, in spatele acestora sta o munca pe care putini si-o pot imagina. Dar ce inseamna o reteta JamilaCuisine? O reteta JamilaCuisine presupune cel putin 20 de boluri de spalat, intre 6 si 12 ore de filmari, alte 12-16 ore de montaj si editare. In plus, o reteta video inseamna machiaj refacut adesea, bluzite si sorturi perfect calcate si o rabdare fara limite. Pe langa toate acestea, o reteta video necesita pasiune, multa daruire si o dragoste nemasurata pentru arta culinara.\r\n\r\nCartea de fata reprezinta pentru noi un vis implinit. Ne-am dorit sa va putem oferi o varianta tiparita a celor mai apreciate retete si, fireste, suntem extrem de bucurosi ca am izbutit. Ce puteti gasi in aceasta carte? In primul rand, retete savuroase, usor de pus in practica si pe gustul tuturor. Nu sunt preparate culinare facute dupa un retetar strict, nici creatiile unui bucatar renumit. Sunt retete ce pot fi gatite de oricine, retetele mamelor si ale bunicelor noastre, retete demne de a fi cunoscute de toata lumea si, nu in ultimul rand, retete care sa adune in jurul mesei intreaga familie.', 7, 99, 'Jamila.jpg'),
(32, 'Curs practic de yoga - Judy Smith ', 10, 0, 'Ilustrat cu 500 de fotografii, acest curs bazat pe sistemul Iyengar yoga face deosebit de accesibil  invatarea posturilor specifice. Incepatorii si practicantii de nivel intermediar vor invata cum sa  isi tonifice muschii, sa  isi stimuleze circulatia, sa  isi imbunatateasca postura, in beneficiul sanatatii generale.\r\n\r\nExercitiile calmeaza  mintea, sporesc concentrarea si inlatura stresul. Include peste 100 de secvente de yoga descrise pas cu pas, indrumari despre cum se incepe, cand se practica  si ce echipament este necesar. Asanele clasice sunt grupate pe tipuri si in functie de dificultate, cu variatii adecvate pentru toate nivelurile de pregastire si de flexibilitate. Un manual perfect pentru toate varstele si nivelurile de pregatire.', 7, 99, 'Curs Ioga.jpg'),
(33, 'Cele cinci limbaje ale iubirii - Gary Chapman ', 4, 0, 'Casniciile nefericite se datoreaza adesea unui motiv simplu, dupa parerea autorului Gary Chapman: vorbim limbaje diferite de iubire. In experienta sa de peste 30 de ani in calitate de consilier matrimonial, dr. Gary Chapman a identificat cinci limbaje de iubire: cuvintele de incurajare, timpul petrecut alaturi de cel drag, cadourile, serviciile si contactul fizic. Cartea le abordeaza pe fiecare in parte, intr-un stil accesibil, din care nu lipseste umorul.\r\n\r\nCum puteti descoperi limbajul de iubire al partenerului dumneavoastra? Cartea include chestionare scurte, pe care le puteti completa, precum si intrebari aplicate, la care puteti medita si raspunde pe larg.', 10, 99, 'Cele cinci limbaje ale iubirii - Gary Chapman.jpg'),
(34, 'Codul lui Da Vinci - Brown Dan ', 5, 0, ' \"Opera unui geniu. Dan Brown e unul dintre cei mai buni, cei mai inteligenti scriitori.\" - Nelson DeMille\r\n\r\nAflat la Paris pentru o conferinta, profesorul american de simbolistica si istoria artei Robert Langdon primeste un telefon in toiul noptii. Batranul custode al Luvrului a fost asasinat in muzeu, in circumstante stranii, lasand un mesaj la fel de enigmatic ca zambetul Giocondei.\r\n\r\nImpreuna cu Sophie, specialista in decriptare, Langdon incepe o cursa frenetica pentru descifrarea numeroaselor indicii ascunse in picturile lui Leonardo... si nu numai. Pasii ii poarta de la Paris la Londra si apoi in Scotia, pentru a dezvalui un mister pazit cu strasnicie de secole, capabil sa zguduie din temelii dogmele crestinatatii.', 5, 99, 'Codul lui Da Vinci - Brown Dan .jpg'),
(40, 'Homo Deus. ScurtÄƒ istorie a viitorului - Yuval Noah Harari ', 6, 0, 'De-a lungul istoriei, omenirea s-a confruntat constant cu trei probleme cruciale: razboiul, foametea si molimele. In secolul XX, a reusit sa le rezolve in mare masura. Razboiul nu mai are aceeasi putere de distrugere: in prezent numarul celor care se sinucid e mai mare decit al celor morti in conflicte armate. Foametea dispare: oamenii sufera mai degraba din cauza obezitatii decit din cauza malnutritiei. Molimele nu mai fac ravagii: mai multi oameni mor de batrinete decit in urma bolilor infectioase. Ce anume va lua insa locul razboiului, foametei si molimelor in agenda omenirii? Ce destin vom alege pentru noi insine, ce scopuri ne vom stabili? Yuval Noah Harari exploreaza proiectele, visurile si cosmarurile care ne vor marca viitorul. Omul va incerca sa devina asemenea zeilor, invingind moartea si creind viata artificiala. Este chiar urmatorul stadiu al evolutiei â€“ Homo deus.\\r\\n\\r\\nâ€žO carte remarcabila, cu perspective si reinterpretari profunde ale lucrurilor pe care credeam ca le stim despre noi si despre istoria noastra. O carte foarte inteligenta, plina de observatii patrunzatoare si ironie muscatoare... O carte neobisnuita, o carte cool.â€ (The Guardian)', 18, 99, 'res_d52e87bdb1d5e058a8972430cd7512a2_450x450_cpvf.jpg'),
(41, 'Cartea Rosie - Carl Gustav Jung ', 7, 0, 'â€žAnii in care m-am ocupat de imaginile interioare au constituit perioada cea mai importanta a vietii mele, in decursul careia s-au decis toate lucrurile esentiale. Atunci a inceput totul, iar amanuntele care au urmat sunt doar niste completari si lamuriri. Intreaga mea activitate ulterioara a constat in a elabora ceea ce tasnise in acei ani din inconstient si mai intai ma inundase, ma coplesise. A fost materia primordiala pentru opera unei vieti.\"\r\n\r\nAcestea sunt cuvintele psihologului C.G. Jung scrise in 1957, in care se refera la deceniile cand a lucrat la Cartea Rosie, din 1914 pana in 1930. Cu toate ca se stie de peste optzeci de ani de existenta ei, Cartea Rosie nu a fost inca niciodata publicata si nici nu a fost pusa la dispozitie publicului jungian larg, discipolilor si succesorilor lui Jung. Fiind efectiv cartea centrala a operei jungiene, ea este publicata acum intr-o editie facscimil completa, cu un studiu introductiv si note contextuale semnate de bine cunoscutul cercetator al scrierilor lui Jung, Sonu Shamdasani.\r\nSe va putea studia acum autoexperimentul lui Jung pe baza documentatiei primare mai degraba decat a imaginatiei, barfelor si speculatiei si surprinde mai bine geneza operei sale mai tarzii. Timp de aproape un secol, o astfel de lectura pur si simplu nu a fost posibila, iar vastei literaturi despre viata si opera jungiana i-a lipsit accesul la singurul document de-o importanta covarsitoare. Publicarea Cartii Rosii ne da posibilitatea unei noi epoci in intelegerea scrierilor lui Jung. Ne ofera o deschidere unica spre modul in care si-a recuperat sufletul si a constituit o psihologie. Ar putea sa fie cea mai influenta scriere, nepublicata pana in prezent, din istoria psihologiei.', 100, 98, 'Cartea Rosie - Carl Gustav Jung .jpg'),
(42, 'Zece ani rai - Mugur Ciuvica ', 8, 0, 'Zece ani rai este o carte despre condamnarea lui Dan Voiculescu, o carte despre razboiul de un deceniu dintre Basescu si Voiculescu. Este o carte despre sistemul represiv creat de Traian Basescu in timpul celor doua mandate de presedinte. Este o carte despre politicieni, procurori, judecatori, sefi ai serviciilor secrete si oameni de afaceri. Si, pentru ca orice sistem represiv dispune de instrumente prin care isi justifica abuzurile, aceasta carte este si despre propagandistii sistemului. Este o carte care descrie mecanismul prin care Traian Basescu si-a subordonat, pas cu pas, intregul sistem judiciar. Este o carte despre basism.  Am scris aceasta carte deopotriva dezgustat si revoltat ca, in Romania anului 2014, doisprezece oameni nevinovati au fost condamnati pentru ca asa a vrut Traian Basescu. Unul dintre acestia, Dan Voiculescu, imi este prieten. Si imi pare rau sa-i spun ca nu s-a inselat, in 2004, cand a spus ca â€žun Traian Basescu in fruntea tarii ar arunca definitiv Romania in haos, lucru la care acesta se pricepe cel mai bineâ€.', 18, 99, 'Zece ani rai - Mugur Ciuvica .jpg'),
(43, 'Super Food In Fiecare Zi - Jamie Oliver ', 9, 0, 'Aceasta este cea mai personala carte pe care am scris o pana acum si, pentru a o alcatui, am intreprins o atenta calatorie in lumea sanatatii si a nutritiei. Folosindu-ma de ceea ce cunosc cel mai bine â€“ o multime de retete culinare incredibile â€“, am speranta ca volumul de fata sa va ajute sa duceti o viata cat mai sanatoasa, fericita si implinita. Mancarea este facuta pentru a fi savurata, impartita cu altii, pentru a fi un motiv de sarbatoare, iar preparatele culinare sanatoase si hranitoare trebuie sa fie atragator colorate, delicioase si amuzante. Cartea cuprinde numeroase retete echilibrate, bogate, care va vor domoli foamea si va vor incanta papilele gustative. In plus, pentru ca am studiat intens tot ce tine de domeniul nutritiei, va asigur ca nu puteti gresi, indiferent ce ati alege de aici. Este de ajuns sa culegeti doar cateva idei din acest volum â€“ ele va vor schimba felul in care va raportati la mancare, inarmandu-va cu informatiile de care aveti nevoie pentru a avea succes in domeniul culinar.\r\n\r\nCu drag, Jamie', 20, 99, 'Super Food In Fiecare Zi - Jamie Oliver .jpg'),
(44, 'Alimentatia pentru un Creier sanatos - Dr - Perlmutter ', 10, 0, 'Copilul dumneavoastra are ADHD sau autism? Suferiti de astm, oboseala cronica, depresie si anxietate, insomnii, hipertensiune arteriala? Potrivit celor mai recente studii stiintifice, flora intestinala ne afecteaza starea de spirit, libidoul, metabolismul, imunitatea si chiar perceptia asupra lumii si claritatea gandirii; contribuie la faptul daca suntem grasi sau zvelti, energici sau apatici si poate fi considerata un organ in adevaratul sens al cuvantului, jucand un rol la fel de important, in ce priveste starea de sanatate, ca inima, plamanii, ficatul si creierul. Autorul ne arata ca nici un remediu farmaceutic nu se poate compara cu alimentatia in ceea ce priveste controlul bacteriilor intestinale, recomandand o dieta si un program simplu in sase pasi pentru resetarea si reinnoirea microbiomului, care vor face minuni in tratamentul a numeroase afectiuni neurologice, de la autism la Alzheimer si scleroza multipla.\r\nDr. David Perlmutter, neurolog, membru al Institutului American pentru Nutritie a primit premiul â€žLinus Paulingâ€ in 2002 pentru metodele sale inovatoare de abordare a afectiunilor neurologice si premiul â€žDenham Harmonâ€ pentru munca de pionierat in aplicarea stiintei radicalilor liberi in medicina clinica. In 2006 a fost numit Medicul anului de catre Asociatia Nationala pentru Alimente Nutritionale din SUA', 5, 99, 'Alimentatia pentru un Creier sanatos - Dr - Perlmutter .jpg'),
(45, 'Educatia financiara in familie - Robert T. Kiyosaki ', 4, 0, 'â€žPrincipalul motiv pentru care oamenii se lupta cu dificultatile financiare este acela ca au trecut prin scoala fara sa invete nimic despre bani. Rezultatul este ca invata sa lucreze pentru baniâ€¦ dar nu invata niciodata sa puna banii sa actioneze pentru ei.â€œ Robert T. Kiyosaki\r\n\r\nâ€žImi iubesc copiii si vreau sa fac tot posibilul pentru ca ei sa aiba parte de cea mai buna educatie! Invatamantul traditional, desi este foarte important, nu mai este de ajuns. Trebuie sa intelegem cu totii ce sunt banii si cum lucreaza ei.â€œ Sharon L. Lechter\r\n\r\nTata bogat, tata saracâ€¦\r\n\r\n- Arunca in aer mitul care spune ca trebuie sa castigi mult ca sa te imbogatesti.\r\n- Combate ideea potrivit careia, daca ai o casa, esti instarit.\r\n- Le arata parintilor de ce nu se pot baza pe sistemul de invatamant, daca vor sa-si vada copiii invatand cate ceva despre bani.\r\n- Defineste odata pentru totdeauna activele si pasivele.\r\n- Va invata ce si cum sa le spuneti copiilor despre bani, astfel incat sa aiba succes financiar in viitor.', 13, 99, 'res_c7c858d841c316d92d04de0be2c9e0ad_450x450_u6fb.jpg'),
(46, 'Insomnii - Irina Binder', 5, 0, 'A venit momentul fericit in care Insomniile Irinei Binder sa ni se prinda ca o podoaba in jurul sufletelor, iar gandurile ei de la ceasuri tarzii sa ne imbratiseze pe toti cu generozitate. Citindu-i trairile, vom descoperi inca o data, cu uimire, ca nedormirile ei sunt si ale noastre, ca nesomnul meu si al tau ne apropie pe toti in acele clipe in care reusim sa ne privim viata cu sinceritate si cu inimile asternute in palme. Vom afla astfel, in nopti incercanate, ca gandurile si simtirile Irinei sunt si ale noastre, ca bucuriile, tristetile si sperantele ei ne curg navalnic prin sange tuturor, iar Irina e a fiecaruia dintre noi. Fiindca Irina Binder scrie pentru noi, naste splendori inspirate de stele si de viata si daruieste confesiunile sale nocturne fiecarui om, fie el din Brasov, de la Melbourne sau Toronto â€“ spre linistea cugetelor si mai ales a existentelor noastre, unindu-ne intr-o lume ideala, fara diferente in simtire si fara frontiere geografice â€“ pentru ca universalitatea trairilor sale reuseste sa ne fie far autentic si sincer, fara pretiozitate si fara emfaza.â€ Carmen Voinea - Raducanu', 5, 99, 'res_b27d684ba7e6c0474b37ad447f3ac91f_450x450_t7nv.jpg'),
(47, 'Sultana KÃ¶sem ', 6, 0, ' Demna urmasa a sultanei HÃ¼rrem, KÃ¶sem devine, dintr-o sclava grecoaica, pe nume Anastasia, una dintre sultanele cele mai puternice ale Imperiului Otoman, marea iubire a sultanului Ahmed I si mama a doi viitori sultani. Romanul tinerei autoare Asli Eke ne poarta in fascinanta epoca a Sultanatului femeilor, la inceputul secolului al XVII-lea, in fastul oriental al haremului din Palatul Topkapi, printre valuri tesute din taine de nepatruns. Cu toate ca nu a avut si nu are in lume notorietatea legendarei Roxelana (HÃ¼rrem), KÃ¶sem a fost, fara indoiala, conform opiniei majoritatii specialistilor epocii, cea mai puternica dintre sultanele otomane.\r\n\r\nRespectata ca si inaintasa sa, KÃ¶sem se va bucura de intreaga incredere a stapanului si sotului sau, in conditiile in care sultana, spunea un izvor al timpului, â€žera consultata in multe problemeâ€, consecinta a calitatii de â€žfavorita a sultanului, care o doreste mereu sa-i fie alaturiâ€.', 4, 99, 'res_4791759f6111cfa0e350bd591e70c547_450x450_6r4f.jpg'),
(48, '50 De idei care iti schimba viata - Robert Anthony', 7, 0, 'ubconstientul nostru ne poate ajuta sa ne satisfacem toate nevoile pe care le avem in viata de zi cu zi. Il putem face sa lucreze pentru noi intr-un mod eficient; subconstientul ne poate transforma in indivizi mult mai eficienti, actionand ca un secretar al mintii si amintindu-ne lucruri care trebuie facute intr-un anumit moment, pentru ca aduce la suprafata informatii pe care mintea constienta nu le cunoaste.\r\n\r\nDaca-i asa, ce trebuie sa facem pentru a folosi si pentru a ne perfectiona aceste capacitati extraordinare?\r\n\r\nCum putem lua in stapanire acest regat secret al subconstientului?\r\n\r\nSingura constanta din Univers este SCHIMBAREA\r\n\r\nTotul se afla in continua miscare, nimic nu sta pe loc, nimic nu ramane la fel. Fiecare moment al vietii este diferit de cel care tocmai a trecut; fiecare zi este unica; fiecare varsta se deosebeste de celelalteâ€¦ La fel si noi, ca fiinte umane, suntem supusi acestei legi universale.\r\n\r\nNu exista stagnare decat in aparenta. Ceea ce se intampla de fapt este ca ori evoluam, ori involuam. Alegerea ne apartine in totalitate. Ceea ce semanam in prezent culegem intotdeauna in viitor. Ceea ce facem astazi creeaza ziua de maine. In bine sau in rauâ€¦? Depinde doar de noi!\r\n\r\nCartea 50 de idei care iti schimba viata, scrisa de unul dintre cei mai importanti traineri in dezvoltare personala si coach pe probleme de business â€“ Dr. Robert Anthony, a fost special conceputa pentru aplicarea sa in practica. De aceea, rezultatele sunt sigure!', 4, 99, 'res_823211fd0b5bed1e1197d09572f1a026_450x450_67p1.jpg'),
(49, 'Liniste: vorbeste Trump - George Beahm ', 8, 0, 'Liniste: vorbeste Trumpâ€ este o colectie impartiala a celor mai importante declaratii, relatari, fragmente de interviuri sau opinii ale lui Donald Trump din cadrul dezbaterilor prezidentiale pentru Casa Alba. Arogant, tupeist, franc si cu un aer mereu invingator, Trump este un fenomen american. Remarcandu-se inca de la debutul in afaceri ca un lider controversat in arta negocierilor, el este in prezent o figura politica importanta, care continua sa tina prima pagina a ziarelor din intreaga lume. Chiar daca nu toti ii impartasim vederile politice, ar fi interesant totusi sa-i citim declaratiile, uneori scandaloase, si sa-i urmarim clipurile video. Cartea este un ghid neoficial al mintii lui Donald Trump, alcatuit din cuvantari, interviuri si declaratii acordate unor publicatii, posturi de televiziune sau agentii de stiri. Indiferent daca denunta politica imigratiei sau vorbeste despre construirea unui zid la granita cu Mexicul, ori ne dezvaluie cateva secrete din arta negocierii in afaceri, sau insulta in public unele persoane, un lucru e cert in privinta lui Trump: vorbeste deschis, fara ocolisuri si rezultatul e fascinant', 3, 99, 'res_83b113fff291a2efb3cf7692791fdccd_450x450_qhf0.png'),
(50, 'Sanatatea are gust. Ghid de slabit - Mihaela Bilic ', 9, 0, 'anatatea are gust â€¦e acum mai usor de citit, mai accesibila, mai prietenoasa. Din cartea mare si complexa pe care o stiti, au rezultat trei ghiduri: pentru slabit, pentru familie si pentru oameni activi. Acestea contin, pe langa informatiile deja existente, capitole noi si sfaturi practice care sa va ajute saâ€¯faceti din mancare un sprijin, un aliat, o sursa de sanatate.\r\n\r\n \r\n\r\nGhidul pentru slabit este primul din aceasta serieâ€¯si va ofera o metoda originala de a scapa de obsesia dietelor si a kilogramelor in plus: psihonutritia. Instrumentul de lucru pe care vi l propun este un jurnal emotionalo alimentar, cu ajutorul caruia sa identificati rolul pe care mancarea il are in viata voastra, astfel incat sa reusiti sa slabiti mancand oriceâ€¦ dar cu masura!\r\n\r\n \r\n\r\nIntrebarea reala, apropo de kilogramele in plus, nu este â€žCE sa mananc?â€œ, ci â€žDE CE mananc?â€œ. Foamea sufletului, agitatia mintii, mancatul emotional ori nevoile neidentificate si nesatisfacute ingrasa, nu painea sau dulciurile. Kilogramele in plus sunt o boala a sufletului â€“ aveti grija de el si veti slabi definitiv!\r\nIar pentru mai mult ajutor, va promit in curand un caiet vesel, interactiv, plin cu sugestii de meniuri, curiozitati si echivalente alimentare, pe care voi sa-l completati si sa-l transformati in propriul jurnal de slabit.\r\n\r\n \r\n\r\nCand e vorba de slabit, toata lumea se intreaba cu disperare: â€žCe sa mananc?â€œ. Cautam in exterior, in reviste, la prieteni sau pe internet o formula secreta, miraculoasa sau doar noua, pe care n-am incercat-o, care sa ne scape de kilogramele inâ€¯plus. Suntem dispusi sa renuntam cu totul la obiceiurile noastre, sa mancam produse care nu ne plac, sa disociem, saâ€¯interzicem, intr-un cuvant sa renuntam, si sa ne transformam viata intr-un chin pentru ca, nu-i asa, cine nu sufera nu slabeste.', 7, 99, 'res_d817effafb2e446b5f33fbb4c5d41dcf_450x450_729v.jpg'),
(51, 'Codul greutatii corporale - Jason Fung ', 10, 0, ' Tot ce crezi ca stii despre pierderea in greutate este gresit. Luarea in greutate si obezitatea sunt cauzate de hormoni. Doar intelegand efectele insulinei si ale rezistentei la insulina putem avea o greutate normala.\r\n \r\nâ€žCorpul uman s-a dezvoltat in asa fel incat sa supra-vietuiasca episoadelor de foame. Grasimea este energie stocata, iar muschiul este tesut functional. Grasimea este arsa prima. A presupune ca se intampla invers este totuna cu a spune ca, desi avem o rezerva suficienta de lemne pentru foc, hotaram sa punem pe foc canapeaua. E o prostie. De ce ar face corpul nostru ceva atat de prostesc? El isi conserva masa musculara pana cand depozitele de grasime devin atat de mici incat nu mai are de ales.â€\r\n \r\nDr. Jason Fung\r\n \r\nâ€žO carte nu doar revelatoare, ci si uimitor de antrenanta. Cititi-o pentru a intelege cum sa va mentineti greutatea normala.â€', 8, 99, 'res_ed0f81bc951736d3490afe6f4d05fe34_450x450_erdo.jpg'),
(52, 'Cuvinte pentru femei scrise de un barbat - Adrian CUTINOV ', 4, 0, 'Ele sunt mamele, surorile, prietenele si iubitele noastre dar uneori nu-si mai cunosc valoarea.\r\nAdanc, in gandurile femeilor care ne fac viata mai frumoasa, se afla adesea indoieli si critici. Aceste fiinte sensibile si puternice au intrebari care nu mereu isi gasesc raspunsurile potrivite. Cum pot ajuta cuvintele unui barbat ca femeile pe care le iubim sa-si vada adevarata valoare?\r\n\r\nAdrian Cutinov s-a simtit mereu aproape de sufletul feminin si, in aceasta carte, si-a expus  credinta ca le-ar putea ajuta.\r\n\r\nFemeile au intrebari.\r\n\r\nBarbatii simt emotii?\r\n\r\nBarbatii pot iubi?\r\n\r\nBarbatii se maturizeaza mai tarziu?\r\n\r\nA devenit societatea prea superficiala pentru relatiile profunde?\r\n\r\nEste moarta varsta iubirii adevarate?\r\n\r\nAdrian isi propune sa reaminteasca femeilor cat de speciale sunt si sa aprofundeze aceste intrebari pentru a le oferi raspunsurile pe care unii barbati le evita.\r\n\r\nIi vei iubi viziunea, pentru ca te poate ajuta sa-ti gasesti iubirea pe care ti-o doresti.\r\n\r\n \r\n\r\nCartea va fi insotita de un semn de carte si de autograful autorului.', 15, 99, 'res_76f77594b64dd47dbddffb1fa9531c99_450x450_6fk7.jpg'),
(53, 'Sub aceeasi stea - John Green ', 5, 0, ' Fara suferinta, cum am putea sti ce e bucuria?\r\nIsi vor aminti oamenii de mine? Ce sens are viata mea? Ce vreau sa las in urma?\r\n\r\nDesi un medicament miraculos i-a prelungit viata, Hazel Grace Lancaster, in varsta de 16 ani, are impresia ca de cand se stie a fost â€žin faza terminala\".\r\n\r\nInsa atunci cand fermecatorul Augustus Waters, suferind si el de aceeasi boala cumplita, apare la intalnirile unui grup de suport unde merge Hazel, povestea fetei va fi complet rescrisa.\r\nSpirite inrudite, impartind acelasi farmec si acelasi simt al umorului, Hazel si Gus incep o cursa contra cronometru in care invata ce inseamna sa iubesti.', 10, 99, 'res_cf7daf62a336c3f276019ba86240ebfa_450x450_iqb3.jpg'),
(54, 'Al Doilea Razboi Mondial. Moscova 1941 - Robert Forczyk ', 6, 0, ' Pana la sfarsitul lui septembrie 1941, trupele sovietice suferisera deja pierderi infioratoare de peste doua milioane de oameni, cand Hitler si-a redirectionat armatele victorioase spre inima Uniunii Sovietice â€“ Moscova. Dar, la sfarsitul anului, germanii s-au vazut siliti sa lanseze atacul final inainte de venirea teribilei ierni rusesti.\r\n\r\n \r\n\r\nStalin cauta disperat sa castige timp ca sa adune toate resursele pentru apararea capitalei. Aceasta carte descrie Operatiunea Taifun, asaltul german asupra Moscovei, una dintre cele mai ample operatiuni militare a razboiului si prima infrangere a lui Hitler.', 4, 99, 'res_83c8d9ea53a42a888875d8b3ce571123_450x450_bknm.jpg'),
(55, 'Calaul Dragostei - Irvin D. Yalom ', 7, 0, 'â€žIn aceasta carte voi spune povestile a zece pacienti care au apelat la psihoterapie si care, pe parcursul acestui demers, s-au luptat cu durerea existentiala. Dar nu acesta a fost motivul pentru care mi-au cerut ajutorul; dimpotriva, toti zece sufereau de problemele obisnuite ale vietii cotidiene: singuratate, dispret fata de sine, impotenta, migrene, compulsivitate sexuala, obezitate, hipertensiune, tristete, o mistuitoare dragoste obsesiva, oscilatii bruste ale starii de spirit, deprimare. Si totusi, cumva (un Â«cumvaÂ» care se dezvaluie altfel in fiecare poveste), psihoterapia a scos la iveala radacini adanci ale acestor probleme cat se poate de prozaice â€” radacini care se intind departe, pana la esenta existentei', 11, 99, 'res_7510b475eafd7120a1a977193b92bd52_450x450_gd68.jpg'),
(56, 'Interesul public - Madalina Tomescu ', 8, 0, 'â€žInteresul publicâ€ este o cercetare academica de referinta atat in domeniul administratiei publice, cat si in domeniul drepturilor omului, necesara atat specialistilor, cat si studentilor. Este o carte in care fiecare dintre noi ar putea gasi raspunsuri la unele dintre problemele cu care ne confruntam zi de zi.\r\nIn concluzie, apreciem ca o asemenea lucrare, minutios pregatita, temeinic documentata si foarte bine realizata trebuie sa faca parte din biblioteca oricarui specialist in domeniul Dreptului si Administratiei Publice, dar si a oricarei persoane interesata sa participe la adoptarea deciziilor in comunitatea careia ii apartine pentru a putea sa-si apere drepturile.', 7, 99, 'res_682e242123f33a565b8da01b680e9183_450x450_laj7.jpg'),
(57, 'Meniul Perfect - Gordon Ramsay ', 9, 0, ' O colectie fantastica, alcatuita din 52 de meniuri, cate unul pentru fiecare saptamana a anului, pe care le poti combina in fiecare zi, in 140 000 de feluri diferite.\r\n\r\nO modalitate de prezentare inteligenta si cu totul inedita, care iti va permite sa alegi si sa potrivesti retetele, astfel incat sa le ai pe toate in fata ochilor in timp ce gatesti.\r\n\r\nCele 156 de retete, gustari, feluri principale si deserturi, insotite de peste 30 de garnituri si fonduri, iti ofera o selectie a celor mai fascinante mancaruri din lumea intreaga.\r\n\r\nDin bucataria italiana si cea frantuzeasca pana in cea marocana sau cea mexicana, est-asiatica sau din Orientul Mijlociu, cu arome din fiecare anotimp, cu siguranta vei gasi ceva pe gustul tau! Iar fotografiile iti vor lasa gura apa!', 88, 99, 'res_fa90e358a9d78104578887b942becac6_450x450_h6dk.jpg'),
(58, 'Anatomia alergarii - Joe Puleo, Dr. Patrick Milroy ', 10, 0, ' Ghidul vostru ilustrat pentru cresterea fortei, vitezei si rezistentei\r\nâ€žCum sa devii mai puternic, mai rapid si mai inteligent pe drum, pe pista de alergare si pe un traseu de cros. Cartea este absolut necesara celor care vor sa abordeze alergarea la un nivel superior.â€ - Todd Williams, participant la doua olimpiade, detinator al recordului SUA la proba de 15 000 m\r\n\r\nâ€žCu ajutorul unor ilustratii minunate, dr. Patrick Milroy si antrenorul Joe Puleo ofera informatii fascinante despre evolutia si fiziologia alergarii. Ei demonstreaza modul in care cresterea fortei si imbunatatirea echilibrului te pot ajuta sa alergi mai repede si mai mult in acest sport inselator de simplu.â€ - John Hanc, redactor colaborator la Runnerâ€™s World\r\n\r\nâ€žBine scrisa si informativa, Anatomia alergarii ofera cititorilor o perspectiva interesanta privind ceea ce inseamna sa fii un alergator si cum sa ajungi la nivelul urmator.â€ - Dr. Neil Liebman, chiropractician al echipei Philadelphia', 17, 99, 'res_e9d83cac776a1bfa34d8af5e66b1d08f_450x450_u8e4.jpg'),
(59, 'Uneori castigi, uneori pierzi, inveti - John C. Maxwell ', 4, 0, 'Daca incepi sa vezi pierderile ca pe niste oportunitati de a te dezvolta invatand ceva din ele, atunci vei deveni de neinvins. In viata vei avea si neplaceri, insa daca esti echipat asa cum se cuvine, pierderea in sine nu te va coplesi. Cel care va trage invataminte dupa ce a trecut si prin momente mai putin fericite va fi stapanul propriei vieti. E mai mult decat un ghid care ne invata cum sa depasim perioadele mai dificile, fiindca ne ofera cel mai pretios dar dintre toate: speranta. John Wooden, jucator si antrenor emerit de baschet. De cele mai multe ori ne oprim din invatat atunci cand am obtinut in sfarsit diploma mult visata. In realitate, abia din acest moment ar trebui sa incepem sa invatam. Lectiile care ni se predau la scoala ne pot ghida uneori in viata, insa ne ofera doar instrumentele de baza astfel incat sa putem face fata in lumea reala, cea de dincolo de peretii salii de clasa. Iar in lumea reala mai si suferim uneori â€“ si vom mai si pierde, indiferent ca este vorba despre viata personala sau profesionala, de bani, de sanatate sau de problemele sentimentale. Asta e garantat. Nu ni se garanteaza insa modul in care vom reactiona la aceste provocari. Exista o mare diferenta intre cei care invata de pe urma acestor pierderi si cei care nu o fac. Vrei ca spiritul tau sa zaca undeva intr-un soi de infirmerie, mult prea obosit sa incerce din nou sa lupte? Sau vei profita de oportunitate ca sa studiezi, sa evaluezi si sa reconsideri ceea ce s-a in-tamplat, astfel incat data urmatoare sa fii mult mai bine inarmat?', 10, 99, 'res_7476fb1be1c7d6746261bb93e5b201ad_450x450_67et.jpg'),
(60, 'Hotul de carti - Markus Zusak ', 5, 0, 'Este anul 1939. Germania nazista.\r\nTara isi tine rasuflarea. Moartea nu a avut niciodata mai mult de lucru, si va deveni chiar mai ocupata. Liesel Meminger si fratele ei mai mic sunt dusi de catre mama lor sa locuiasca cu o familie sociala in afara orasului MÃ¼nchen. Tatal lui Liesel a fost dus departe sub soapta unui singur cuvant nefamiliar - Kommunist -, iar Liesel vede in ochii mamei sale teama unui destin similar.\r\n\r\nPe parcursul calatoriei, Moartea ii face o vizita baietelului si o observa pe Liesel. Va fi prima dintre multe intalniri apropiate. Langa mormantul fratelui ei, viata lui Liesel se schimba atunci cand ea ridica un singur obiect, ascuns partial in zapada. Este Manualul Groparului, lasat acolo din greseala, si este prima ei carte furata. Astfel incepe o poveste despre dragostea de carti si de cuvinte, pe masura ce Liesel invata sa citeasca cu ajutorul tatalui ei adoptiv, care canta la acordeon. In curand, va fura carti de la incendierile de carti organizate de nazisti, din biblioteca sotiei primarului, si de oriunde le mai putea gasi.', 7, 99, 'res_4bc5749b9b94ede2fcf1db908c203f0d_450x450_cb4b.jpg'),
(61, 'Istoria ilustrata a nazismului - Flavio Floriani ', 6, 0, 'Volumul acorda o atentie speciala operatiunilor militare care, intre 1939 si 1945, au pus fata in fata Germania si fortele aliate, genocidului evreilor si conotatiei speciale pe care nazismul a dat-o â€žrazboiului totalâ€œ vizand exterminarea unor popoare considerate inferioare, toate aceste aspecte fiind puse in legatura cu bazele pe care fusese edificat cel de-al Treilea Reich.\r\n\r\nCadrul capitularii Germaniei este completat de procesul de la NÃ¼rnberg si de chestiunea â€žcomemorariiâ€œ, ocupatia Aliatilor, impartirea tarii si mostenirea unui trecut coplesitor in perioada razboiului rece.', 23, 99, 'res_80d3a6bc8bd8fc3c305464e9e300ef10_450x450_ffsk.jpg'),
(62, 'Emotii date pe fata - Paul Ekman ', 7, 0, 'Vreti sa aflati prin ce difera un zambet fericit de un suras fortat? Doriti sa stiti ce sentimente ascunde copilul, partenerul sau seful dumneavoastra? Dupa decenii de cercetari ale emotiilor si expresiilor faciale, Paul Ekman si-a sintetizat rezultatele in aceasta carte, care combina excelent informatiile stiintifice cu sugestiile practice. Psihologul american explica originea si modurile de manifestare ale principalelor emotii umane (furie, dezgust, tristete, bucurie, frica, surpriza) si ofera instrumente utile pentru mai buna comunicare in familie si la serviciu. Cartea include fotografii a zeci de chipuri ce acopera bogatul evantai al afectivitatii umane.\r\n\r\n \r\n\r\nEmotiile ne salveaza viata, dar pot s-o si distruga. Ne imping sa actionam aparent rezonabil, dar si in moduri pe care ajungem sa le regretam. Scopul meu este acela de a-i ajuta pe cititori sa-si inteleaga si sa-si imbunatateasca viata emotionala. Ma uimeste ca, pana foarte de curand, oamenii de stiinta, precum si nespecialistii au stiut foarte putine lucruri despre emotii, desi ele joaca un rol esential in viata fiecaruia. - Paul Ekman', 8, 99, 'res_aaaf7eecb4c1f4575ae2fc8d8331a55b_450x450_6lmb.jpg'),
(63, 'Barack Obama - O alegere istorica ', 8, 0, 'Oamenii au fost dintotdeauna fascinati de conspiratii. De-a lungul timpului, persoane influente, cu preocupari si interese comune, s-au grupat in ordine si societati, incercand sÃ£ conduca lumea din umbra sau sa protejeze anumite cunostinte destinate doar initiatilor. Multi sunt convinsi ca aceste organizatii inca exista.\r\nOpus Dei, Clubul Bilderberg, Biserica Scientologica, Iluminatii, Cavalerii Templieri, Ku Klux Klan, Cosa Nostra, francmasonii... sunt doar cateva dintre numele invaluite in mister, asociate cu puterea oculta.\r\nDin Spania medievala in Los Angelesul modern, Istoria societatilor secrete ne introduce in culisele unora dintre cele mai enigmatice credinte si institutii, dezvaluindu-ne, dincolo de speculatii, scopurile reale (uneori, extrem de ingrijoratoare) si impactul enorm al organizatiilor secrete asupra istoriei omenirii.\r\n\r\nMichael Streeter este scriitor si jurnalist de investigatii, cu un masterat in istorie. A publicat articole in The Independent, The Independent on Sunday si Scottish Daily Express. A mai publicat o biografie a generalului Franco si volumul Mediterana: leaganul culturii europene (2006).', 3, 99, 'res_2d38c5f4956214fca5cb8d07722eb1c0_450x450_43s.jpg'),
(64, 'Stil de viata, nu dieta! - Valentin Vasile ', 9, 0, 'Stii deja ca slabitul prin diete nu este unul de durata. Cartea aceasta iti arata si de ce. In plus, poti afla ce strategie ti se potriveste cel mai bine. Dar si cum sa pui in practica cei cinci pasi absolut necesari pentru o slabire de durata.\r\n\r\nAutorul prezinta intr-o maniera exacta proprietatile alimentelor, cantitatile care ar trebui consumate, asocierile care se pot face intre felurite produse alimentare, precum si combinatiile care trebuie evitate.\r\n\r\nAceasta carte este, mai presus de toate, o invitatie la echilibru â€” in ceea ce priveste atat hrana, cat si activitatile cotidiene.\r\n\r\n\"Motivatia te ajuta sa incepi, puterea obiceiurilor te ajuta sa continuiâ€œ, spune Valentin Vasile.', 16, 99, 'res_3a5e106146dde804f15bb5e2341bb9a9_450x450_h9ie.jpg'),
(65, 'Dieta Bulletproof - Dave Asprey ', 10, 0, 'In jurul varstei de 25 de ani, Dave Asprey era un multimilionar de succes din Silicon Valley. De asemenea, avea o greutate de peste 130 de kilograme, cu toate ca respecta intocmai indicatiile medicului: sa manance atat cat sa acumuleze 1800 calorii zilnic si sa faca exercitii o ora si jumatate pe zi timp de 6 zile pe saptamana.\r\n\r\nDieta Bulletproof te va provoca si iti va schimba modul in care privesti scaderea in greutate si sanatatea. Vei sari peste micul dejun, nu vei mai contoriza caloriile, vei manca multe grasimi saturate sanatoase, vei face exercitii si vei dormi mai putin.\r\n \r\nAstfel vei castiga energie, vei creste putina musculatura si vei privi cum kilogramele se topesc. Prin renuntarea la gandirea traditionala cu privire la diete, Asprey a trecut de la a fi supraponderal si bolnav pana la varsta de treizeci de ani, la scaderea in greutate cu 45 de kilograme, cresterea IQ-ului si o stare de bine dupa implinirea varstei de 40.', 30, 99, 'res_e1c45ade23228a5992c9bdcb5ff66561_450x450_se5i.jpg'),
(66, 'Forta gandirii pozitive - Norman Vincent Peale ', 4, 0, ' â€žScopul acestei carti este unul simplu si direct. Ea nu emite pretentia de a avea o calitate literara exceptionala, nici nu cauta sa faca dovada eruditiei mele iesite din comun. E vorba, pur si simplu, de un ghid practic care va incurajeaza la actiune in scopul autoperfectionarii. Am scris aceste pagini propunandu-mi un singur obiectiv: sa-mi ajut cititorii sa traiasca o viata fericita, plina de satisfactii si impliniri; cartea reprezinta efortul meu de a impartasi o experienta spirituala cu ceilalti si, daca m-a ajutat pe mine, sunt convins ca poate fi de folos si altora.\r\n\r\nAm scris-o si dintr-o intelegere profunda pentru durerea, greutatile si lupta ce ne caracterizeaza existenta. Citind-o, veti invata sa ganditi pozitiv, fara a va stabili ca unic tel gloria, avutia sau puterea, ci avand in vedere intoarcerea la credinta pentru a trece peste infrangeri si a va conduce viata in spiritul unor valori creatoare autentice. Veti invata sa traiti dupa reguli stricte de disciplina, care va vor ajuta sa va invingeti propriile limite si sa depasiti toate obstacolele vietii.â€œ', 12, 99, 'res_0a6d7b1b08a2b72c9c9636b951ebd420_450x450_b7lp.jpg'),
(67, 'Fata din tren - Paula Hawkins ', 5, 0, ' Tu nu o cunosti.\r\nDar ea te cunoaste.\r\n\r\nIn fiecare zi e la fel.\r\nPana astazi.\r\nRachel ia in fiecare dimineata acelasi tren. Care asteapta la acelasi semnal defect. In acest timp,\r\nea urmareste ritualul de dimineata al unui cuplu ce locuieste intr-o casa de langa calea ferata.\r\nI-a botezat â€žJess si Jason\". Viata lor i se pare perfecta. Daca ar fi si ea fericita...\r\nPana cand, intr-o zi, vede ceva ce o socheaza.\r\nTotul se schimba. Rachel se trezeste angrenata in viata celor pe care-i privea de la distanta...\r\nEa este fata din tren.\r\nSi nu doar atat...', 14, 99, 'res_99d0dd83b1e749168b8160432992fb0d_450x450_nsqb.jpg'),
(68, 'Berlin: Caderea 1945 - Antony Beevor ', 6, 0, 'Relateaza cu detalii sfasietoare si cu formidabil talent literar agonia celui de-al Treilea Reich in fata atacurilor violente ale Armatei Rosii. Boyd Tonkin, Independent: Aceasta extraordinara lucrare ne face sa simtim haosul si frica de parca fiecare picatura de sange ar fi a noastra. Este mai mult decat o abordare umana; este frumos scrisa, bine documentata si nu se lasa din mana. Simon Sebag-Montefiore, Spectator \"Beevor combina cu deosebit talent derularile strategice si extraordinarele experiente individuale. O relatare irezistibila a unor evenimente atat de teribile incat au inca putere ca, la o jumatate de secol, sa ne infricoseze si sa ne uimeasca\". Adam Sisman, Observer \"Stralucitoare. Imbina felul in care un subiect percepe realitatile razboiului cu priceperea romancierului pentru simbolistica si detalii emotionale. Beevor realizeaza o imagine infioratoare a razboiului.\" - Orlando Figes, Sunday Times', 16, 99, 'res_87b909c8a0d68e64a13c765f9bf02271_450x450_rrhu.jpg'),
(69, 'Tratat de psihopatologie si psihiatrie pentru psihologi - Florin Tudose, Catalina Tudose, Letitia Dobranici ', 7, 0, ' Sanatatea mintala reprezinta domeniul principal de interes pentru cei care imbratiseaza cariera de psiholog, iar psihologia clinica constituie una dintre cele mai atractive dar si cele mai dificile ipostaze profesionale. Este un domeniu in care sunt necesare cunostinte aprofundate, capacitatea de a lucra in echipa, precum si deschiderea catre interdisciplinaritate.\r\n\r\nImpresionantele mutatii aparute in ultimele decenii in abordarea suferintelor psihice au antrenat modificari importante in modul in care psihologul, ca specialist al domeniului, este implicat in diagnosticare si terapie.\r\nPsihologul in formare, fie ca este student, fie ca este participant la un program masteral va avea prin aceasta lucrare un instrument complet si modern care sa il ajute in descifrarea universului bolii psihice si va putea cunoaste intregul evantai al posibilelor interventii terapeutice.\r\n\r\nPosibilitatea unei mai bune comunicari cu psihiatrul este o conditie importanta a dezvoltarii profesionale a fiecarui psiholog clinician si o conditie necesara a succesului in aceasta nobila profesiune.\r\n\r\nFlorin Tudose este profesor de psihologie clinica si psihiatrie. Domenii de interes: psihosomatica, psihosexologia, relatia medic-pacient, psihiatria de legatura. A publicat peste 20 de volume in domeniile de care se ocupa.', 34, 99, 'res_4083513c0204bf25d9f33682d9141817_450x450_nck3.jpg'),
(70, 'Avutia natiunilor paperback - Adam Smith ', 8, 0, ' Editia de fata este o selectie din acele parti ale celor cinci Carti care sunt inca relevante si care includ multe dintre citatele si exemplele faimoase din textul original. Acest proces a presupus extragerea multor exemple istorice care nu mai sunt de actualitate astazi, dar este contrabalansata de faptul ca cititorii vor obtine o expunere mai focalizata asupra principalelor argumente ale lui Smith.\r\n\r\nMeritul lui Smith a fost acela de a intelege ca, intrucat toata lumea beneficiaza de pe urma lui, liberul schimb ne sporeste prosperitatea la fel de sigur precum o fac agricultura sau manufacturile. Avutia unei natiuni nu sta in cantitatea de aur din vistieria sa, ci in volumul productiei sale si comertului sau â€“ adica ceea ce numim, astazi, produsul national brut. Aceste idei noi, dar puternice, au creat o bresa intelectuala masiva in zidurile comerciale ale Europei, iar stilul direct si provocator al lui Smith, inteligenta sardonica si gama larga de exemple l-au facut accesibil politicienilor, care au pus in practica ideile sale, creand marea era a pietelor libere, competitiei si prosperitatii din secolul XIX.\r\nEamonn Butler, Director al Institutului Adam Smith\r\n\r\nAmendamentul crucial care trebuie facut este ca sistemul smithian nu este echivalent cu o viziune anarho-capitalista si nici cu cea a unui laissez-faire pur. Mai degraba, el depinde in mod fundamental de un cadru adecvat de reguli (â€žjustitie\", in terminologia lui Smith) pe care statul este insarcinat sa le instituie, sa le adapteze constant si sa le aplice. Intr-adevar, rolul guvernului depaseste cu mult conceperea minimalista a statului ca â€žpaznic de noapte\" din reprezentarile caricaturale ale secolelor XIX si XX. Smith ii cere statului sa fie â€žputernic\" in â€žarbitrarea\" â€žMarelui Joc\" al economiei de piata (cum il denumeste el in Teoria sentimentelor morale) si sa furnizeze ceea ce noi numim astazi â€žbunurile publice\", inclusiv educarea celor saraci.\r\nDr. Razeen Sally, Conferentiar Economie politica internationala - London School of Economics, Co-director al Centrului European de Economie Politica, ECIPE', 11, 99, 'res_28c9875703eefc22f3dfc7750b311163_450x450_932o.jpg'),
(72, ' Strength Training Anatomy, Frederic Delavier ', 10, 0, 'Over 1 million copies sold With new exercises, additional stretches, and more of Frederic Delavier\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s signature illustrations, you\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'ll gain a whole new understanding of how muscles perform during strength exercises. This one-of-a-kind best-seller combines the visual detail of top anatomy texts with the best of strength training advice. Many books explain what muscles are used during exercise, but no other resource brings the anatomy to life like Strength Training Anatomy. Over 600 full-color illustrations reveal the primary muscles worked along with all the relevant surrounding structures, including bones, ligaments, tendons, and connective tissue. Like having an X-ray for each exercise, the anatomical depictions show both superficial and deep layers and detail how various setup positions affect muscle recruitment and emphasize underlying structures. New pages show common strength training injuries in a fascinating light and offer precautions to help you exercise safely. Author and illustrator Frederic Delavier is the former editor in chief of the French publication PowerMag. He is a journalist for Le Monde du Muscle and a contributor to Men\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s Health Germany and several other strength training publications.', 38, 99, 'res_9ebc2ac367b8b3272011a1661ef420d6_450x450_8jj.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(4, 'Dezvoltare Personala'),
(5, 'Fictiune'),
(6, 'Istorie'),
(7, 'Psihologie'),
(8, 'Politica'),
(9, 'Gastronomie'),
(10, 'Fitness');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastname` varchar(128) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(128) CHARACTER SET utf8 NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(128) CHARACTER SET utf8 NOT NULL,
  `town` varchar(128) NOT NULL,
  `address` tinytext CHARACTER SET utf8 NOT NULL,
  `delivery_method` varchar(128) NOT NULL,
  `payment_method` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `status`, `order_date`, `lastname`, `firstname`, `email`, `phone`, `town`, `address`, `delivery_method`, `payment_method`) VALUES
(4, 0, '2019-07-14 17:05:10', 'VÃ£duva', 'OlimpiaÂ Â ', 'vaduva@gmail.com', '0741-219 900', 'Braila', 'STR. PIETÄ‚Å¢II nr. 1, BRÄ‚ILA, 810249', 'Post', 'Card'),
(5, 0, '2019-07-14 17:06:01', 'Banica', 'RaduÂ Â ', 'Banica@gmail.com', '0231-584 347', 'Botosani', 'STR. ENESCU GEORGE nr. 6, BOTOÅžANI, 710146', 'PickUp', 'Cash'),
(6, 0, '2019-07-14 17:07:05', 'Draghici', 'IoanaÂ Â ', 'Ioana@gmail.com', '0259-320 222', 'Bihor', 'STR. VULCAN SAMUIL nr. 16, BEIUÅž', 'Post', 'Cash'),
(7, 0, '2019-07-14 17:08:40', 'Pavlenco', 'AdiÂ Â ', 'Adi@gmail.com', '0756023148', 'Bucuresti', 'BD. VICTORIEI nr. 75, 715200', 'PickUp', 'Cash'),
(8, 0, '2019-07-17 05:40:48', 'Pavlenco', 'RaduÂ Â ', 'razvan23@gmail.com', '0756023148', 'Braila', 'STR. PIETÄ‚Å¢II nr. 1, BRÄ‚ILA, 810249', 'Post', 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 1, 12),
(1, 14, 3, 12),
(1, 15, 2, 12),
(2, 25, 2, 10),
(2, 33, 1, 10),
(3, 25, 2, 10),
(3, 26, 1, 8),
(4, 26, 1, 8),
(4, 25, 1, 10),
(5, 26, 1, 8),
(5, 25, 1, 10),
(6, 69, 1, 34),
(6, 60, 2, 7),
(7, 43, 1, 20),
(7, 58, 1, 17),
(8, 28, 1, 13),
(8, 41, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(9, 'Slide_2', 'Webp.net-resizeimage (1).jpg'),
(10, 'Slide_3', 'Webp.net-resizeimage (2).jpg'),
(12, 'Slide_3', 'Webp.net-resizeimage (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'gigel', '4321', 'gigel@yahoo.com'),
(3, 'Ionel', '1234', 'ionel@frone123.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
