# Negative Patterns

Negative examples are organized in two types: (A) extracted from source text (minor issues in otherwise strong papers), and (B) abstract constructed patterns for what Mimi should avoid.

Each negative pattern now includes a `positive_counterpart` — the curated positive example that teaches what to do instead.

---

## A: Extracted From Source Text

## neg-extract-001

- id: neg-extract-001
- source: 陈云松, "建构中国自主社会学知识体系需要消弭'身土张力'", 《中国社会科学》, 2025(1)
- source_type: full_text_available
- product_tool: trans
- subfunction: ai_cliche_removal
- section_type: conclusion
- sociology_field: governance_policy
- difficulty_level: L2
- excerpt: 党的二十届三中全会提出"实施哲学社会科学创新工程，构建中国哲学社会科学自主知识体系"的明确要求。对于中国社会学工作者而言，重思和拓展社会学想象力承载了民族复兴、理论再造和重新走向世界学术舞台中央的期许与使命。
- why_it_matters: 学术论文结语段的政论化倾向。引用全会决定本身没有问题，但"承载了民族复兴、理论再造和重新走向世界学术舞台中央的期许与使命"一句将全文的学术论证收束为宏大宣告，消解了前文积累的学理力度。
- reusable_rule: 结语段避免两种收束方式：(a) 引用政策文件作为学术论证的"加持"——政策文件可以为研究提供背景或对象，但不应用来替代学术结论；(b) "承载了……期许与使命"式的宣告句——用学术命题本身的影响力来收束。
- quality_dimension: compliance
- positive_counterpart: |
    原文（王宁 2024，摘要四句式）：在当前投资和出口促进经济增长的作用相对下降的情况下，居民消费对经济增长的作用日益凸显。然而，我国居民的平均消费倾向和消费率却长期偏低。中国居民的消费行为在许多方面呈现出与西方消费者不同的情况，需要对这些差异进行理论解释。从文化层面探索中国居民消费及劳动供给的动力问题，儒家二元消费伦理可以提供不同于西方新教伦理和浪漫主义消费伦理的有效解释路径。
    为何好：摘要以学术方案本身收束，不借助任何外部权威背书。四句形成不可逆论证链：背景变化→经验反常→理论需求→方案宣告。"
- trigger_queries: ["学术论文结语怎么写不显得空洞", "结语可以引用政策文件吗", "怎么让论文结尾有力但不喊口号"]
- genre_fit: 所有学术文体均应避免，期刊论文尤甚
- do_not_apply_when: 政策文件是论文的研究对象（如政策文本分析）而非结语装饰时，可以引用但需分析而非宣告

## neg-extract-002

- id: neg-extract-002
- source: 景天魁, "社会学融通主义的历史逻辑与时代意涵", 《中国社会科学》, 2024(4)
- source_type: full_text_available
- product_tool: trans
- subfunction: ai_cliche_removal
- section_type: conclusion
- sociology_field: culture_identity
- difficulty_level: L2
- excerpt: 处于战国时代的荀子，有包容诸子百家的胸襟，有融通各派之学的眼界，有群居和一的抱负，终能创立群学。费孝通曾指出，21世纪进入了"全世界的战国时期"。新时代开拓了建设中华民族现代文明的道路。以应有的胸襟、眼界和抱负，实现社会学的大融通，创建中国特色社会学，是时代为我们提供的机遇，也是历史赋予的使命。
- why_it_matters: 结语段的"抒情式升华"。三句话从荀子跳到费孝通再跳到"新时代"，节奏骤然加快，逻辑跳跃增大。前文12,000字的学术史论证在结尾被压缩为"胸襟、眼界、抱负"三个道德化词汇。升华的方式从"学术命题总结"滑向了"道德感召"。
- reusable_rule: 结语升华的边界：可以总结学术命题的历史意义，但不要将学术命题转化为道德命题。"融通主义的历史逻辑"的学术意义是"为化解多元取代悖论提供了方法论基础"，不是"以应有的胸襟、眼界和抱负去完成使命"。
- quality_dimension: compliance
- positive_counterpart: |
    原文（景天魁 2024，四个命题收拢到核心概念）：群学融通主义传统的历史逻辑的主要体现为：发展方式是交叠性而非取代性的，发展过程是传承性而非断裂性的，发展机制是会通性而非区隔性的，发展形式是共生性而非单一性的。交叠性更新、传承性发展、会通性转化、共生性崛起，虽各自机制不同，但都是融通。
    为何好：抽象命题的四个证据锚点——一次性列出所有维度及其对立面（是X而非Y），每个维度独立成节各有经验证据支撑，最后用"虽各自机制不同，但都是融通"将所有维度收拢回核心概念。比结语段的道德感召有学理力度得多。
- trigger_queries: ["论文结尾怎么写才不鸡汤", "结语怎么收才显得有学术分量", "慎终如始怎么写"]
- genre_fit: 所有文体均应避免
- do_not_apply_when: N/A — 这个模式在任何情况下都不应被模仿

## neg-extract-003

- id: neg-extract-003
- source: 王宁, "文化视角下的中国消费密码", 《中国社会科学》, 2024(10)
- source_type: full_text_available
- product_tool: data
- subfunction: cautious_inference
- section_type: conclusion
- sociology_field: culture_identity
- difficulty_level: L2
- excerpt: 中华文明具有突出的连续性，表现为中国式现代化进程中有鲜明的传统文化内容，其中最为典型的当属"儒家二元消费伦理"影响下的劳动者的"勤"和"俭"的有机结合。一旦纳入现代化的制度框架，中国人的节俭传统可以通过高储蓄率为现代化进程提供金融资源或资金积累，而勤劳传统则为现代化进程提供最大化的劳动供给。可见，除了结构因素，"勤""俭"结合的文化传统也成为中国式现代化的一个文化动力。
- why_it_matters: 把"关联"说成"动力"的推断越界。前文论证了节俭/勤劳传统如何通过储蓄和劳动供给为现代化提供了条件（"条件/机制"论证），但结语中直接将"条件"升级为"动力"。"动力"在因果链条中的位置比"条件"更根本，这一升级在逻辑上需要更强的证据。
- reusable_rule: 区分"条件/机制"和"动力/原因"。如果你的论证只展示了X如何为Y提供了某种条件或机制，就不要在结论中将X升级为Y的"动力"或"原因"。保持概念层级的前后一致。
- quality_dimension: traceability
- positive_counterpart: |
    原文（王宁 2024，分化逻辑）：不过，受儒家二元消费伦理影响的大都是20世纪70年代以前出生的消费者。随着人们生活水平的提高，新一代青年还奉行儒家二元消费伦理吗？据观察，儒家二元消费伦理在青年群体中的延续出现了分化。部分青年摆脱儒家二元消费伦理影响，而进入消费主义阵营。但也有众多青年依然秉承儒家二元消费伦理。还有一部分青年则以"躺平"的方式摆脱儒家二元消费伦理。在这里，"躺平"可以理解为"目标放弃"。
    为何好：严格区分了"据观察""出现了分化""可以理解为"等不同强度的推断标记。不给出"是"或"否"的统一答案，而是识别三种不同回应模式，每种附一个解释机制。
- trigger_queries: ["论文结论可以写得比正文更强吗", "怎么判断结论是不是过度推断", "条件和原因的区分"]
- genre_fit: 所有文体均应避免
- do_not_apply_when: 如果你的研究设计本身就是因果检验（实验/准实验/工具变量），且在正文中已提供了因果证据，结论中可以合理使用因果语言

## neg-extract-004

- id: neg-extract-004
- source: 景天魁, "社会学融通主义的历史逻辑与时代意涵", 《中国社会科学》, 2024(4)
- source_type: full_text_available
- product_tool: trans
- subfunction: ai_cliche_removal
- section_type: conclusion
- sociology_field: culture_identity
- difficulty_level: L1
- excerpt: 社会学融通主义乘时代不可逆之大势,前景广阔，未来可期。
- why_it_matters: 纯粹的结尾空话。"乘……大势""前景广阔""未来可期"三个短语互释，说的是同一件事（"会好"），但没说"为什么好""好在哪""对谁好"。在12,000字的论证之后用这样一句话收尾，读起来像是作者写累了。
- reusable_rule: 结尾句的底线：至少包含一个具体判断。"前景广阔"必须有——对谁广阔、在什么条件下广阔。"未来可期"删掉，用一句总结全文核心命题的话替换。
- quality_dimension: style
- positive_counterpart: |
    原文（王宁 2024，摘要四句式）：在当前投资和出口促进经济增长的作用相对下降的情况下，居民消费对经济增长的作用日益凸显。然而，我国居民的平均消费倾向和消费率却长期偏低。中国居民的消费行为在许多方面呈现出与西方消费者不同的情况，需要对这些差异进行理论解释。从文化层面探索中国居民消费及劳动供给的动力问题，儒家二元消费伦理可以提供不同于西方新教伦理和浪漫主义消费伦理的有效解释路径。
    为何好：摘要以学术方案本身收束，不借助任何外部权威背书。四句形成不可逆论证链：背景变化→经验反常→理论需求→方案宣告。"
- trigger_queries: ["论文最后一句怎么写", "结尾不要说空话", "怎么避免前景广阔这种套话"]
- genre_fit: 所有文体均应避免
- do_not_apply_when: N/A — 永远不要写"前景广阔，未来可期"作为学术论文的结尾

---

## B: Abstract Constructed Negative Patterns

## neg-abstract-001: One-Paper-Per-Paragraph Listing

- id: neg-abstract-001
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: lit
- subfunction: theme_synthesis
- section_type: literature_review
- sociology_field: all
- difficulty_level: L1
- pattern: 将文献综述写成每段介绍一篇论文的流水账——"张三(2020)以X数据研究了Y问题，发现Z。李四(2021)从A视角出发，对B问题进行了C分析，得出D结论。王五(2022)……"没有任何跨越论文的对话、比较或整合。
- reusable_rule: 文献综述的段落应以"主题/争论/问题"为组织单元，不以"论文"为组织单元。如果一段只涉及一篇论文，这一段的组织单元就是错的。
- quality_dimension: synthesis
- positive_counterpart: |
    原文（王宁 2024，问题链综述）：在马克斯·韦伯那里…什么条件让西方劳动者摆脱经济传统主义影响（"韦伯问题"）？桑巴特不同意韦伯…坎贝尔认为韦伯忽略了消费的途径…费孝通在《禄村农田》中所描述的"消遣经济"…蕴含的问题是这种消遣经济在什么条件下会式微（"费孝通问题"）？
    为何好：以问题链（韦伯问题→桑巴特反驳→坎贝尔问题→费孝通问题）串联四个学者，每个学者的出场是因为前者的问题未被回答。这是 synthesis 区别于 listing 的本质。"
- trigger_queries: ["文献综述怎么写不像流水账", "怎么把十几篇文献串起来", "老师说我综述每段只讲一篇文献"]
- genre_fit: 文献综述章节 / 引言中的文献回顾部分
- do_not_apply_when: 当一篇论文是本领域的奠基性/唯一文献，且需要用一整段来深度拆解其论证结构时，可以单篇成段——但此时这一段的功能不是"介绍这篇论文"而是"解剖其论证逻辑"

## neg-abstract-002: "With The Development of..." Opening

- id: neg-abstract-002
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: trans
- subfunction: ai_cliche_removal
- section_type: introduction
- sociology_field: all
- difficulty_level: L1
- pattern: "随着我国经济社会的快速发展……""伴随全球化进程的不断深入……""在新时代背景下……"——这些开头没有给出任何具体信息。
- reusable_rule: 拒绝任何以"随着……发展/深入/推进"开头的句子，除非从句中给出了具体的、可验证的变化（"随着2008年后农民工返乡比例从X%上升至Y%……"）。
- quality_dimension: style
- positive_counterpart: |
    原文（景天魁 2024，逐层聚焦）："多重范式"是社会学的特点和优势，但不同"范式"各自强调自己的独特视角和独立价值，难以形成学科共识。而就学科整体而言，长期缺乏共识，就难以有效积累。这个问题不仅存在于西方社会学内部，更存在于中西社会学之间。中西两大文明和两种历史逻辑的分野，使得范式统一尤其困难。由此不难理解，自清末民初为何发生"西方化"还是"中国化"的争论。
    为何好：起点是学科内在张力（多重范式），不是外部时代背景。从一般学科问题逐层聚焦到中国核心问题，每一步都是前一步的深化。"
- trigger_queries: ["论文开头怎么写不落俗套", "不要用随着什么什么的发展开头", "引言第一句怎么避免套话"]
- genre_fit: 所有文体均应避免
- do_not_apply_when: 描述具体的历史变迁时，"随着"可以接受，但必须跟可验证的具体变化而非模糊的"不断发展"

## neg-abstract-003: Concept Stacking Without Explanation

- id: neg-abstract-003
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: lit
- subfunction: concept_definition
- section_type: introduction
- sociology_field: all
- difficulty_level: L1
- pattern: "本研究基于结构化理论、场域理论和实践理论，从建构主义视角出发，借鉴知识社会学和科学社会学的研究成果……"——五个理论标签堆在一句话里，但没说这些理论之间的关系是什么。
- reusable_rule: 如果需要使用多个理论资源，必须解释理论之间的关系（互补？竞争？层级？），并给每个理论配一个"它在本研究中具体做什么"的功能句。
- quality_dimension: terminology
- positive_counterpart: |
    原文（王宁 2024，问题链综述）：在马克斯·韦伯那里…什么条件让西方劳动者摆脱经济传统主义影响（"韦伯问题"）？桑巴特不同意韦伯…坎贝尔认为韦伯忽略了消费的途径…费孝通在《禄村农田》中所描述的"消遣经济"…蕴含的问题是这种消遣经济在什么条件下会式微（"费孝通问题"）？
    为何好：以问题链（韦伯问题→桑巴特反驳→坎贝尔问题→费孝通问题）串联四个学者，每个学者的出场是因为前者的问题未被回答。这是 synthesis 区别于 listing 的本质。"
- trigger_queries: ["理论框架怎么写不堆概念", "怎么同时用好几个理论", "审稿人说理论堆砌怎么办"]
- genre_fit: 理论框架 / 引言中的理论定位部分
- do_not_apply_when: N/A — 任何情况下都不应该堆砌理论标签而不解释关系

## neg-abstract-004: Inflated Novelty Claims

- id: neg-abstract-004
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: lit
- subfunction: research_gap
- section_type: introduction
- sociology_field: all
- difficulty_level: L1
- pattern: "现有研究均未涉及……""鲜有学者关注……""本研究填补了这一空白"。"均未"和"鲜有"在绝大部分情况下是信息检索不充分的表现。真正的学术创新几乎总是"站在前人肩膀上"的修正和拓展。
- reusable_rule: 用"已有研究在X方面做了充分讨论，但在Y维度上仍有待深入"取代"现有研究均未涉及Y"。用"本文尝试将X和Y结合起来分析"取代"填补空白"。
- quality_dimension: faithfulness
- positive_counterpart: |
    原文（王宁 2024，研究缺口）：现有消费研究的文献大多是从结构角度（如收入分配问题、社会保障问题、有效供给问题、流动性约束问题）分析中国的消费不振，同时把消费行为和劳动供给分开处理。但结构因素对消费行为的影响受到文化因素的中介或调节…同时，由于消费和劳动存在相互影响，对消费行为的分析要与对劳动供给的分析结合起来。
    为何好：缺口论证通过"遗漏了中介变量"这一方法论论证完成——承认已有路径的覆盖面，指出的是遗漏的机制而非空白领域。不说"现有研究均未涉及"。"
- trigger_queries: ["怎么指出研究缺口又不显得傲慢", "填补空白这种说法可以写吗", "创新点怎么写不夸大"]
- genre_fit: 所有文体均应避免
- do_not_apply_when: N/A — 永远不要声称"填补空白"或"均未涉及"

## neg-abstract-005: Unsupported Coding Inference

- id: neg-abstract-005
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: data
- subfunction: qualitative_coding
- section_type: method
- sociology_field: all
- difficulty_level: L1
- pattern: "从访谈中提炼出三个核心主题：权力不对等、情感劳动、身份协商"——给出了三个编码名称，但没有展示这三个编码是如何从原始材料中生成的。没有引用任何一句访谈原文。
- reusable_rule: 每报告一个编码，必须配至少一句原始材料引文，说明这个编码来自材料的什么位置、什么表述。编码的命名如果使用了学术术语（如"权力不对等"），需要解释受访者的日常语言是如何被翻译为学术术语的。
- quality_dimension: traceability
- positive_counterpart: |
    原文（王宁 2024，分析备忘录）：在《江村经济》中，费孝通总结村民的消费呈现两方面特征。一方面，在日常消费中秉持传统的节俭伦理。另一方面，在礼仪消费方面则不可节俭。费孝通认为："在婚丧礼仪的场合，节俭思想就烟消云散了。"…费孝通所描述的村民在日常消费和礼仪消费领域分别奉行的节俭原则和体面原则，可以被概括为"儒家二元消费伦理"。
    为何好：三层结构——描述（费孝通总结村民消费呈现两方面特征）→ 证据（引用原话"节俭思想就烟消云散了"）→ 概念化（"可以被概括为儒家二元消费伦理"）。每一步锚定在原文，概念化在证据之后而非之前。
- trigger_queries: ["质性编码怎么展示才可信", "怎么证明编码不是自己编的", "访谈分析怎么让读者信服"]
- genre_fit: 方法论 / 研究发现章节
- do_not_apply_when: N/A — 每报告一个编码都必须配原文证据

## neg-abstract-006: Translationese In English Academic Writing

- id: neg-abstract-006
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: trans
- subfunction: english_transcreation
- section_type: other
- sociology_field: all
- difficulty_level: L2
- pattern: Chinese-to-English academic translation that retains Chinese sentence structures word-for-word. E.g. "Under the background of economic globalization, China's social structure has undergone profound changes" — grammatically correct but "Under the background of..." and "profound changes" are direct calques from Chinese academic formulas.
- reusable_rule: When transcreating Chinese academic text into English: (a) replace "Under the background of..." with a specific time period or causal condition; (b) replace "profound/deep changes" with a numbered list of specific changes; (c) convert Chinese topic-comment sentence structures into English subject-verb-object structures.
- quality_dimension: style
- positive_counterpart: |
    原文（Qian & Hu 2024，英文摘要）：The internet and digital technologies have penetrated all domains of people's lives, and family life is no exception. Despite being a characterizing feature of contemporary family change, the digitalization of family life has yet to be systematically theorized. Against this backdrop, this article develops a multilevel conceptual framework for understanding the digitalization of family life and illustrates the framework by synthesizing state-of-the-art research from multiple disciplines across global contexts.
    为何好：直接陈述现象→用 Despite…has yet to 完成缺口宣告→方案宣告。没有 "Under the background of…" 的中式翻译腔，没有笼统的 "profound changes"，不写 "This paper attempts to…" 而是直接 "This article develops…"。
- trigger_queries: ["中译英学术论文怎么不翻译腔", "under the background of 是不是中式英语", "怎么把中文摘要翻成自然英文"]
- genre_fit: 英文摘要 / 英文论文
- do_not_apply_when: N/A — English academic prose should never use "under the background of..."

## neg-abstract-007: Over-Polishing That Changes Claims

- id: neg-abstract-007
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: trans
- subfunction: chinese_polish
- section_type: other
- sociology_field: all
- difficulty_level: L2
- pattern: 润色过程中将"可能""在一定程度上""在部分案例中""似乎"等谨慎标记删除，把试探性的学术判断变成确定性的断言。例如将"这可能暗示了制度环境对个体行为的塑造作用"润色为"制度环境塑造了个体行为"。
- reusable_rule: 润色的底线规则：(a) 绝不删除原文中的认知情态词（可能/似乎/在一定程度上/在部分案例中/倾向于）；(b) 绝不变更原文中的因果强度（"有关联"≠"导致"，"塑造作用"≠"塑造了"）。
- quality_dimension: faithfulness
- positive_counterpart: |
    原文（王宁 2024，概念区分）：消费欲望的扩大，促进了劳动供给。但是，中国的劳动者存在劳动量过度供给现象。劳动量供给不同于劳动力供给。劳动力供给指的是有劳动能力的潜在劳动者愿意进入劳动力市场。而劳动量供给，是指进入劳动力市场的劳动者的劳动时长或工作量。
    为何好：五步句序——常识铺垫→"但是"反转→"不同于"宣布区分→"指的是…而…是指…"给出操作性定义。原文中"促进了"（关联）而非"决定了"（因果），润色时保留了这个强度不变。
- trigger_queries: ["润色会不会改变我的原意", "怎么确保润色不改论点", "AI润色时删了可能怎么办"]
- genre_fit: 所有文体均应遵守
- do_not_apply_when: N/A — 永远不要删除认知情态词或升级因果强度

## neg-abstract-008: Generic Sociological Language Without Evidence

- id: neg-abstract-008
- source: abstract_constructed
- source_type: abstract_constructed
- product_tool: data
- subfunction: analytic_memo
- section_type: discussion
- sociology_field: all
- difficulty_level: L2
- pattern: 在分析质性材料时使用空洞的学术概念作为填充——"这体现了行动者的能动性""反映了结构的制约""呈现了权力的微观运作"——没有解释在这个具体案例中"能动性"指什么具体行为，"结构"通过什么具体机制形成了制约。
- reusable_rule: 每使用一个抽象学术概念描述材料，必须紧跟一句"具体而言"——说明在这个案例中这个概念对应什么可观察的行为、话语或事件。如果做不到，就不要用这个概念。
- quality_dimension: traceability
- positive_counterpart: |
    原文（王宁 2024，分析备忘录）：在《江村经济》中，费孝通总结村民的消费呈现两方面特征。一方面，在日常消费中秉持传统的节俭伦理。另一方面，在礼仪消费方面则不可节俭。费孝通认为："在婚丧礼仪的场合，节俭思想就烟消云散了。"…费孝通所描述的村民在日常消费和礼仪消费领域分别奉行的节俭原则和体面原则，可以被概括为"儒家二元消费伦理"。
    为何好：三层结构——描述（费孝通总结村民消费呈现两方面特征）→ 证据（引用原话"节俭思想就烟消云散了"）→ 概念化（"可以被概括为儒家二元消费伦理"）。每一步锚定在原文，概念化在证据之后而非之前。
- trigger_queries: ["质性分析怎么不写空话", "怎么避免满篇学术黑话", "具体而言怎么写"]
- genre_fit: 方法论 / 研究发现 / 讨论章节
- do_not_apply_when: N/A — 永远不要在无经验锚定的情况下使用抽象学术概念
