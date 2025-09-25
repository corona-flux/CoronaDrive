/obj/item/organ/tongue/get_possible_languages()
	var/list/langs = ..()
	langs += /datum/language/konjin
	langs += /datum/language/gutter
	langs += /datum/language/movespeak
	langs += /datum/language/carptongue
	langs += /datum/language/slime
	langs += /datum/language/nambuni
	return langs

/// ACTUAL LANGUAGES BEGIN HERE
/datum/language/konjin
	name = "Konjin"
	desc = "This language group formally regarded as Orbital Sino-Tibetan is a result of a genetic relationship between Chinese, Tibetan, Burmese, and other Human languages of similar characteristics that was first proposed in the early 19th century and is extremely popular even in the space age. Originating from Asia, this group of tongues is the second most spoken by Human and Human-derived populations since the birth of Sol Common - and was a primary contender to be the Sol Federation's official language. Many loanwords, idioms, and cultural relics of Japanese, Ryukyuan, Korean, and other societies have managed to persist within it, especially in the daily lives of speakers coming from Martian cities."
	key = "Y"
	flags = TONGUELESS_SPEECH
	space_chance = 70
	// Entirely Chinese save for the isolated 2 "nya" style syllables. I don't want to bloat the syllable list with other mixes, but they generally sound somewhat alike.
	syllables = list (
		"ai", "ang", "bai", "beng", "bian", "biao", "bie", "bing", "cai", "can", "cao", "cei", "ceng", "chai", "chan", "chang",
		"chen", "chi", "chong", "chou", "chu", "chuai", "chuang", "chui", "chun", "dai", "dao", "dang", "deng", "diao", "dong", "duan",
		"fain", "fang", "feng", "fou", "gai", "gang", "gao", "gong", "guai", "guang", "hai", "han", "hang", "hao", "heng", "huai", "ji", "jiang",
		"jiao", "jin", "jun", "kai", "kang", "kong", "kuang", "lang", "lao", "liang", "ling", "long", "luan", "mao", "meng", "mian", "miao",
		"ming", "miu", "nyai", "nang", "nao", "neng", "nyang", "nuan", "qi", "qiang", "qiao", "quan", "qing", "sen", "shang", "shao", "shuan", "song", "tai",
		"tang", "tian", "tiao", "tong", "tuan", "wai", "wang", "wei", "weng", "xi", "xiang", "xiao", "xie", "xin", "xing", "xiong", "xiu", "xuan", "xue", "yan", "yang",
		"yao", "yin", "ying", "yong", "yuan", "zang", "zao", "zeng", "zhai", "zhang",
		"zhen", "zhi", "zhuai", "zhui", "zou", "zun", "zuo"
	)
	icon_state = "hanzi"
	icon = 'modular_doppler/languages/icons/language.dmi'
	default_priority = 94
	default_name_syllable_min = 1
	default_name_syllable_max = 2

/datum/language/gutter
	name = "Plutonian"
	desc = "Plutonian Franco-Castilian is a constructed Romance language that was developed early on in the Sol Federation's colonization history out of necessity for communication between its first Plutonian colonists. It heavily borrows from Spanish and French, with minor influence from other tongues the likes of Italian and Portuguese, despite coming off as elegant it carries a heavy amount of slang and idioms correlated to certain criminal groups. Today, it stands heavily engrained in the planet's culture - and almost every citizen will speak at least some of it on top of Sol."
	key = "G"
	flags = TONGUELESS_SPEECH
	syllables = list (
		"bai", "cai", "jai", "quai", "vai", "dei", "lei", "quei", "sei", "noi", "quoi", "voi", "beu", "queu", "seu", "gan", "zan", "quan", "len", "ten",
		"ba", "be", "bi", "bo", "bu", "ca", "ce", "ci", "co", "cu", "da", "de", "di", "do", "du", "fa", "fe", "fi", "fo", "fu", "ga", "gue", "gui", "go",
		"gu", "ña", "ñe", "ñi", "ño", "ñu", "que", "qui", "cha", "che", "chi", "cho", "chu", "lla", "lle", "lli", "llo", "llu",
		"tá", "vé", "sál", "fáb", "l'e", "seu", "deu", "meu", "vai", "ción", "tá"
	)
	icon_state = "gutter"
	icon = 'modular_doppler/languages/icons/language.dmi'
	default_priority = 40

/datum/language/movespeak
	name = "Move-Speak"
	desc = "A primarily nonverbal language comprised of body movements, gesticulation, and sign language, with only intermittent warbles & other vocalizations.  It's almost completely incomprehensible without its somatic components."
	key = "M"
	flags = TONGUELESS_SPEECH
	space_chance = 30
	syllables = list(
		"wa", "wawa", "awa", "a"
	)
	icon = 'modular_doppler/languages/icons/language.dmi'
	icon_state = "movespeak"
	default_priority = 93

	default_name_syllable_min = 5
	default_name_syllable_max = 10

/datum/language/movespeak/get_random_name(
	gender = NEUTER,
	name_count = default_name_count,
	syllable_min = default_name_syllable_min,
	syllable_max = default_name_syllable_max,
	force_use_syllables = FALSE,
)
	if(force_use_syllables)
		return ..()

	return "The [pick(GLOB.ramatan_last)]"

/datum/language/common
	name = "Sol Common"
	desc = "And when contact was established, the Admiral waved at the screen and said, \"Mi parolas la lingvon de la Homines!\" - I speak the language of Mankind. A simplified mix of Esperanto and Modern Latin, and the only recognized official language of the Sol Federation. This peculiar constructed language became popular during SolFed's earliest days, and was almost entirely overtaken by other popular tongues - it became widespread through heavy-handed political maneuvering with the help of corporate bureaucrats and other undesirables. Nowadays, it's a near-universal tongue and a must-know for any sentient being that plans to leap forward into space."
	space_chance = 60
	syllables = list(
		"al", "an", "ar", "as", "at", "ed", "er", "ha", "he", "hi", "is", "le", "me", "on", "se", "ti",
		"ve", "wa", "ameno", "are", "ent", "for", "had", "hat", "hin", "ch", "be", "abe", "die", "sch", "aus",
		"ber", "che", "que", "ait", "men", "ave", "con", "com", "eta", "eur", "est", "ing", "ver", "was",
		"hin", "deed", "sed", "ut", "unde", "omnis", "latire", "iste", "natus", "sit", "vol", "totam", "rem", "eaque",
		"ipsa", "quae", "ab", "illo", "et", "quasi", "dicta", "dorime", "sunt", "enim", "ipsam", "aut", "odit", "qui",
		"amet", "que", "eius", "modi", "inci","ad", "vel", "eum", "iure", "hic", "pa", "mit", "dis", "du",
		"di", "tol", "mi", "solari", "ite", "domum"
	)
	icon_state = "solcommon"
	icon = 'modular_doppler/languages/icons/language.dmi'

/datum/language/nambuni
	name = "Nambūni"
	desc = "Nambūni is the language spoken by most Nambūlites and by extension Deep Spacers. It has no known origin, though it superficially resembles some Austronesian and Khoisan languages in grammatical and phonetic structure despite predating human spaceflight. There are countless dialects, pidgins, and creoles spread throughout the thousands of micronations that compose the greater Nambūni Assembly, making the language a difficult one to master. As it is the official language of the Assembly, it is mandated that all prayer, diplomacy, and trade must be conducted in Nambūni, thus learning the language is one of the greatest hurdles outsider merchants face."
	key = "N"
	flags = TONGUELESS_SPEECH
	space_chance = 30
	syllables = list (
		"se", "tiap", "ora", "nga", "nge", "ngi", "ngo", "ngū", "ang", "eng", "ing", "ong", "ung", "ach",
		"ech", "ich", "och", "uch", "ych", "basei", "gehi", "nam", "nem", "nim", "nom", "nūm", "da", "de", "di",
		"do", "du", "harū", "heru", "horo", "lua", "lūi", "luo", "ikan", "iken", "ikun", "lah", "luh", "leh",
		"lih", "loh", "pan", "pen", "pon", "pun", "panam", "penam", "pinam", "ponam", "pūnam", "bang", "beng",
		"yang", "yeng", "yong", "yung", "apat", "apet", "apot", "pat", "pet", "pot", "gaan", "geen", "giin", "goon",
		"guun", "yai", "yei", "yūi", "hara", "hera", "hira", "hora", "hura", "hak", "hek", "hik", "hok", "huk",
		"sai", "sei", "sui", "basei", "gehinnam", "mbūn", "mben", "mbon", "mbin", "mbem", "pakan", "pekan", "pak",
		"pek", "puk"
	)
	special_characters = list("'", "-")
	icon_state = "nambu"
	icon = 'modular_doppler/languages/icons/language.dmi'
	additional_syllable_low = 1
	additional_syllable_high = 3
	default_priority = 67
	default_name_syllable_min = 2
	default_name_syllable_max = 3

/datum/language/draconic
	name = "Khaishhs"
	desc = "Often mispronounced as \"Heesh\" by offworlders and non-lizardfolk, The language can date its origins to Tiziran Pre-History where its abundant use of hisses, rattles, glottal sounds and other harsh consonants made it easily understood at greater distances and the extensive cave systems below the surface of Tizira. Though there are as many dialects as there are Clans, the more common \"Imperial Khaishhs\" was created by Clan Talunan as an effort to unite the people under their rule, and is what used in any and all official dealings with their government. The language itself has gained a bit of infamy in how uncomfortable it is to speak after any extended period for those whom do not use it on a daily basis, or whose biology is non-conducive to the vocals required to properly speak it. "
