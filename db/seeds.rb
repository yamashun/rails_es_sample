# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# category
ct1 = Category.create(name: 'バトル・アクション')
ct2 = Category.create(name: 'ギャグ・コメディ')
ct3 = Category.create(name: 'ファンタジー')
ct4 = Category.create(name: 'スポーツ')
ct5 = Category.create(name: 'ラブコメ')
ct6 = Category.create(name: '恋愛')
ct7 = Category.create(name: '異世界')
ct8 = Category.create(name: '日常系')
ct9 = Category.create(name: 'グルメ')
ct10 = Category.create(name: 'ミステリー・サスペンス')
ct11 = Category.create(name: 'ホラー')
ct12 = Category.create(name: 'SF')
ct13 = Category.create(name: 'ロボット')
ct14 = Category.create(name: '歴史')
ct15 = Category.create(name: '少女漫画')
ct16 = Category.create(name: '戦争')
ct17 = Category.create(name: '職業・ビジネス')
ct18 = Category.create(name: 'お色気')

# 出版社
pb1 = Publisher.create(name: '集英社')
pb2 = Publisher.create(name: '講談社')
pb3 = Publisher.create(name: '小学館')
pb4 = Publisher.create(name: '芳文社')
pb5 = Publisher.create(name: '双葉社')

# 作者
at1 = Author.create(name: '原泰久')
at2 = Author.create(name: '堀越耕平')
at3 = Author.create(name: '清水茜')
at4 = Author.create(name: '井上雄彦')
at5 = Author.create(name: '吉田秋生')
at6 = Author.create(name: '野田サトル')
at7 = Author.create(name: 'あｆろ')
at8 = Author.create(name: '神尾葉子')
at9 = Author.create(name: '冨樫義博')
at10 = Author.create(name: '川上秦樹')
at11 = Author.create(name: 'こうの史代')
at12 = Author.create(name: '古舘春一')
at13 = Author.create(name: '三田紀房')


# 漫画
# 漫画全巻ドットコム 2018年間ランキングより
# https://www.mangazenkan.com/special/2068.html
Manga.create(title: "キングダム", publisher: pb1, author: at1, category: ct14, description: "時は紀元前―。いまだ一度も統一されたことのない中国大陸は、500年の大戦争時代。苛烈な戦乱の世に生きる少年・信は、自らの腕で天下に名を成すことを目指す!!")
Manga.create(title: "僕のヒーローアカデミア", publisher: pb1, author: at3, category: ct1, description: "多くの人間が“個性という力を持つ。だが、それは必ずしも正義の為の力ではない。しかし、避けられぬ悪が存在する様に、そこには必ず我らヒーローがいる! ん? 私が誰かって? HA‐HA‐HA‐HA‐HA! さぁ、始まるぞ少年! 君だけの夢に突き進め! “Plus Ultra!!")
Manga.create(title: "はたらく細胞", publisher: pb2, author: at3, category: ct1, description: "人間1人あたりの細胞の数、およそ60兆個! そこには細胞の数だけ仕事(ドラマ)がある! ウイルスや細菌が体内に侵入した時、アレルギー反応が起こった時、ケガをした時などなど、白血球と赤血球を中心とした体内細胞の人知れぬ活躍を描いた「細胞擬人化漫画」の話題作、ついに登場!!肺炎球菌! スギ花粉症! インフルエンザ! すり傷! 次々とこの世界(体)を襲う脅威。その時、体の中ではどんな攻防が繰り広げられているのか!? 白血球、赤血球、血小板、B細胞、T細胞...etc.彼らは働く、24時間365日休みなく!")
Manga.create(title: "スラムダンク SLAM DUNK 新装再編版", publisher: pb1, author: at4, category: ct4, description: '中学時代、50人の女の子にフラれた桜木花道。そんな男が、進学した湘北高校で赤木晴子に一目惚れ! 「バスケットは…お好きですか?」。この一言が、ワルで名高い花道の高校生活を変えることに!!')
Manga.create(title: "BANANA FISH バナナフィッシュ 復刻版全巻BOX", publisher: pb3, author: at5, category: ct15, description: 'フラワーコミックスの黄色いカバーを完全再現!!吉田秋生の不朽の名作が復刻版BOXとなって登場しました。フラワーコミックスの黄色いカバーを完全再現したコミックスと、特典ポストカードをセットにした完全保存版。ポストカードはファン垂涎の、アッシュ・英二のイラストをセレクトしたここでしか手に入らないオリジナルです。')
Manga.create(title: "ゴールデンカムイ", publisher: pb1, author: at6, category: ct1, description: '『不死身の杉元』日露戦争での鬼神の如き武功から、そう謳われた兵士は、ある目的の為に大金を欲し、かつてゴールドラッシュに沸いた北海道へ足を踏み入れる。そこにはアイヌが隠した莫大な埋蔵金への手掛かりが!? 立ち塞がる圧倒的な大自然と凶悪な死刑囚。そして、アイヌの少女、エゾ狼との出逢い。『黄金を巡る生存競争』開幕ッ!!!!')
Manga.create(title: "ゆるキャン△", publisher: pb4, author: at7, category: ct8, description: '富士山が見える湖畔で、一人キャンプをする女の子、リン。一人自転車に乗り、富士山を見にきた女の子、なでしこ。二人でカップラーメンを食べて見た景色は…。読めばキャンプに行きたくなる。行かなくても行った気分になる。そんな新感覚キャンプマンガの登場です!')
Manga.create(title: "花のち晴れ〜花男 Next Season〜", publisher: pb1, author: at8, category: ct6, description: '英徳学園からF4が卒業して2年…。F4のリーダー・道明寺司に憧れる神楽木晴は、「コレクト5」を結成し、学園の品格を保つため“庶民狩りを始めた!! 隠れ庶民として学園に通う江戸川音はバイト中に晴と遭遇し!?')
Manga.create(title: "HUNTER×HUNTER ハンター×ハンター", publisher: pb1, author: at9, category: ct1, description: '父と同じハンターになるため、そして父に会うため、ゴンの旅が始まった。同じようにハンターになるため試験を受ける、レオリオ・クラピカ・キルアと共に、次々と難関を突破していくが…!?')
Manga.create(title: "転生したらスライムだった件", publisher: pb2, author: at10, category: ct7, description: '通り魔に刺されて死んだと思ったら、異世界でスライムに転生しちゃってた!?相手の能力を奪う「捕食者」と世界の理を知る「大賢者」、2つのユニークスキルを武器に、スライムの大冒険が今始まる!異世界転生モノの名作を、原作者完全監修でコミカライズ!')
Manga.create(title: "この世界の片隅に", publisher: pb5, author: at11, category: ct16, description: '平成の名作・ロングセラー「夕凪の街 桜の国」の第2弾ともいうべき本作。戦中の広島県の軍都、呉を舞台にした家族ドラマ。主人公、すずは広島市から呉へ嫁ぎ、新しい家族、新しい街、新しい世界に戸惑う。しかし、一日一日を確かに健気に生きていく…。')
Manga.create(title: "スラムダンク SLAM DUNK", publisher: pb1, author: at4, category: ct4, description: '中学3年間で50人もの女性にフラれた高校1年の不良少年・桜木花道は背の高さと身体能力からバスケットボール部の主将の妹、赤木晴子にバスケット部への入部を薦められる。彼女に一目惚れした「初心者」花道は彼女目当てに入部するも、練習・試合を通じて徐々にバスケットの面白さに目覚めていき、才能を開花させながら、全国制覇を目指していくのであったが……。')
Manga.create(title: "ハイキュー！！", publisher: pb1, author: at12, category: ct4, description: 'おれは飛べる!! バレーボールに魅せられ、中学最初で最後の公式戦に臨んだ日向翔陽。だが、「コート上の王様」と異名を取る天才選手・影山に惨敗してしまう。リベンジを誓い烏野高校バレー部の門を叩く日向だが!?')
Manga.create(title: "インベスターZ", publisher: pb2, author: at13, category: ct17, description: '創立130年の超進学校・道塾学園に、トップで合格した財前孝史。入学式翌日に、財前に明かされた学園の秘密。各学年成績トップ6人のみが参加する「投資部」が存在するのだ。彼らの使命は3000億を運用し、年8%以上の利回りを生み出すこと。それゆえ日本最高基準の教育設備を誇る道塾学園は学費が無料だった!「この世で一番エキサイティングなゲーム、人間の血が最も沸き返る究極の勝負……それは金……投資だよ!」')
