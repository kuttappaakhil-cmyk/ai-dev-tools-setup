# AI-Powered Semantic SEO with Koray Gübür (+ Robert Niechcial)
- Channel: webinar (host "Judah"/community)
- URL: https://www.youtube.com/watch?v=81pe-YM9iRI
- Published: unknown (SGE-era, ~2023)
- Collected: 2026-06-26 (manually copied from YouTube transcript panel — API was IP-rate-limited)
- Note: condensed for readability from the spoken transcript; concepts and data preserved faithfully. Two presenters — Koray Tuğberk Gübür and Robert Niechcial.

---

Webinar about AI and semantic SEO. Guests: Koray Tuğberk Gübür (CEO/founder, Holistic SEO community and agency) and Robert Niechcial (CTO, Investigio — a data-science SEO agency).

### About Koray Gübür and the future of SEO
Koray: I'm one of the SEOs who read the history of SEO since ~1995. I've seen the "is SEO doomed?" context many times — nearly every year we say SEO is dead. We're not doomed as long as the free economy exists and search engines are alive. My journey: started ~2015 in the casino industry on the black-hat side (PBNs); during the medic update we lost everything including millions. Then I moved to white hat and started creating case studies from my black-hat experiences to explain how search engines work. Now we have an agency, a community, and a course.

### About Robert Niechcial and SGE
Robert: CTO at Investigio, one of the first data-science SEO agencies. My business partner runs something like Ahrefs/SEMrush for the Polish market (Senuto), so we have a lot of historical data about the Polish internet, and we develop strategies from a big-data / whole-market perspective rather than just a keyword or niche. AI for me is a game changer — take something from here, from here, connect, and you get a great output.

### Koray's presentation — Quality & cost balance
Topical authority (the concept, not just the phrase) is fundamentally about **cost**. If the search engine ranks you, it's mainly to make money — they rank your website because they also want to make money from it. Cost and quality are always balanced. If your site is quality but the cost is twice your quality, you're not worth crawling, indexing, or ranking. Most concerns in IR papers are around relevance and responsiveness (quality) and cost. Key question: how much should the search engine spend so you can rank, and what value do you give back via users? This is the **cost of ranking / cost of retrieval**: the cost of ranking a website can't be higher than the cost of not ranking it. This single motto underlies my topical authority methodology and 70+ case studies over two years.

Mindset shift: if you ask me what Google is, I wouldn't say a search engine — first, Google is an ads company, and they always prioritize making money. (Kremlinology: official SERPs matter more to me than what search engines say in public.)

Information foraging: bigger isn't necessarily costlier. Search engines tend to satisfy more users with fewer resources. If I can satisfy way more users/queries with far fewer pages, total cost is less. Analogy: you don't check every restaurant in a city — you check one or two, then sit somewhere close. Search engines are markovian and similar. Google doesn't need your website — when you give them another page to rank, you're giving them the 14-trillionth page. To satisfy 9 million queries they won't rank 9 million different websites. That's why big sites like Amazon are helpful to Google even as competitors — Google uses them to satisfy users. So **topical authority is born from decreasing the cost of retrieval** — helping search engines make money.

### Query responsiveness
You might have relevance for a query, and relevance helps you rank higher, but without a responsive sentence (proper distributional semantics and discourse integration) it won't help. Steven Baker (former Googler, now Apple search) found that if there are three-grams matching in both a question and the answer, user satisfaction increased 36%. If there's no vocabulary gap between question and answer, the answer is assumed responsive. So: **relevance** is about distributing connected concepts, entities, and attributes; **responsiveness** is about word compositionality, sentence format, sentence structures, and how sentences follow each other (discourse integration).

### The 7 steps (LLM optimization for SEO)
Whatever you do in the future of SEO will be one of these seven steps:
1. Fine-tune a large language model (so you don't have high similarity with competitors using the same base model).
2. Create a topical map.
3. Create a semantic content network.
4. Generate content.
5. Include human effort (Google's quality rater guidelines say if a human is involved, Google assumes higher quality).
6. Improve your knowledge space.
7. Make your website a "speaking AI" — have a private knowledge base, improve and protect it, and use it to create content and to let your website speak with users.

You'll have a knowledge base, then verbalize it via an LLM (fine-tuned), generate content, and include human touch.

### Micro semantics
Once you have knowledge bases (billions of triples — DBpedia, diseases, motorbikes, wars, etc.), you can verbalize them, classify by topicality, connect to queries, generate questions/answers, and distribute internal links — eventually "website engines" that print sites with small micro-differences. **Micro semantics**: even a 0.1% difference vs your competitor, multiplied across millions of pages, creates a big ranking difference. Optimizing small things site-wide creates good differences in programmatic SEO.

### SEO chatbot
An example (built by "Mike" from Romania): took our case studies and videos (and SEO by the Sea content), created a vector database via embeddings, used LangChain + GPT. Difference from ChatGPT: every answer comes only from our knowledge base. This is the "make your website a speaking website" step — have a private knowledge base, protect it, use it for content and for interacting with users.

### Multichain reasoning
Augmentation of information at the retrieval level. "We paid £20 at the Buckingham Palace gift shop" → the engine knows Buckingham Palace is in the UK, the UK's currency is the pound. If you use ambiguous sentence structure/content, it's harder for the engine to understand you — that raises the clarity cost (more expensive algorithms, more callbacks, more iterations). Google uses three index tiers — tier-1 sites served from the best servers, tier-3 from older servers. They put higher-quality websites on higher-quality servers because they make money from them. Topical authority is about being in that better classification.

### Embeddings
Cross-lingual embeddings: the same simple sentence in different languages produces closer embeddings for similar languages — semantics are language-agnostic. You can crawl your site and create an embedding projection where bubbles are contextual domains and distances represent relevance. From Google's "document representation" patent (David C. Taylor): create contextual domains between web components; to go from domain 1 to domain 6 you need to touch intersecting areas. There's always a macro and micro context inside documents.

### How to create a topical map
Example: clicking "ultrasonic" highlights "cleaners"; clicking "cleaners" also highlights "quartz"; but clicking "cars" doesn't highlight "ultrasonic" — so "cleaners" is a mutual point for both contextual domains. If your site touches three things at once, understand how to process them together. Creating a topical map is **not** just listing concepts/phrases/keywords — you need to understand how the search engine would present them and how they connect. Use word-compositionality / text graphs from the ranking pages to find the macro context vs micro context, and create better content briefs and topical maps. Build a heavy macro context and a small micro context to distribute the contextual flow properly.

### Finetuning
Google's Language Interpretability Tool: make two concepts more distant or closer by touching specific embeddings, checking connections, connecting one to another with manual changes — and it shows with what probability a word connects to another word. According to the connections you use, the search engine classifies your document differently. "It's not about helpful content — helpful content updates can go to hell; it's about the cost, it's about math." Engineers/spokespeople may not want you to focus on the math ("leave the algorithms to us, just write great content").

### Relevance (configuration)
Same meaning, different word order changes the heaviest concept. "Financial advisor helps families achieve financial independence" → heaviest concept is "advisor." "Families achieve financial independence with the help of financial advisor" → heaviest term is "families," so you can target "family + financial independence." Both sentences are equally helpful, but relevance and responsiveness change. Choose the sentence matching your target query (this is "relevance configuration"). (Google support-forum example: "where to buy purple yams" returned sweet potatoes because the engine treated purple yams as a conditional synonym.)

### Robert's presentation — verbalizing knowledge bases
Ingredients matter. ~85-100% of SEOs use the same LLM (OpenAI/ChatGPT), so in the long run there's inflation of same-quality content (LLMs are probability-based). Treat AI as the **best language processor, not a source of knowledge** — GPT-4's dataset is outdated (from 2021). So we need to feed it: either fine-tune (not possible in GPT-4, but the token window is large) with latest structured data, then **print/verbalize** the website/content based on that extra data instead of relying on the model's outdated dataset.

Control loop: input (prompt) → output → feedback based on output → fine-tune prompt → iterate until the output is good enough to publish. Example: take a random weight-loss supplement ("Ketoguru"), extract entities/common words/topics from the content; do the same for competitor products; feed extracted entities + topics + a "human-grade review" prompt; AI generates a human-grade review from that small knowledge base. The more entities/information at the input, the higher-quality the output.

Steps: (1) find data you can scrape (Amazon product descriptions, Healthline reviews, Google Maps), index it somewhere (even Google Sheets); (2) extract the most important information, process and clean (lots of noise); (3) build taxonomies/structure (cities, states); (4) put into AI to "verbalize the knowledge base." Examples: a database of all SWIFT codes/banks in the world (81,000); all banks in Brazil (46,000 addresses); all shops (Walmart) in the US. Organize, prompt, script, print — then fact/quality check and add human effort to satisfy user intent. An AI-generated site is not about content, it's about satisfying intent (someone looking for a bank in Brazil wants a bank, not surrounding content).

### Data sources & proof
Favorite source: Google's "People Also Ask" (iteratively, to build the representation of questions and how Google connects them), and website headings. For embeddings, instead of embedding keywords on OpenAI/other models, embed keywords based on the Google result. Extract People Also Ask, cluster the questions (not just keywords), extend — and you teach Google about extra questions it didn't understand yet. Proof: his partner's company (Senuto) produced an article about "İskender kebab" by crawling all SERPs/sites and putting 4,000 tokens of input to get the output. Ask yourself how you write prompts — "write me a paragraph about payday loans" vs. feeding the LLM a large input → totally different results. "Be an SEO engineer instead of imitating — it's the era of engineers."

### Q&A highlights
- **Can we break Google?** Koray: it's a danger for Google — before, they managed SEO via influencers/approved SEOs/conferences; now there are engineers against engineers. Creating a semantic search engine is easy (use Common Crawl, turn into an index, apply relevance algorithms). Every SEO should have an engineering mindset.
- **Resources for fine-tuning:** Robert: head to OpenAI documentation; no-code options like Reco.io. Koray: learn NLP libraries (start with spaCy, then Cohere or LangChain); download any model from Hugging Face and modify. For monopolizing a niche: crawl pages that never lost a core/spam update, embed them, use new embedding tech to imitate; create templates for question types (e.g., always start Boolean answers with yes/no; if confidence < 96% use "it depends/it varies" templates).
- **Language-agnostic?** Semantics (meanings) are universal, but words are references to meanings. Pharmacies in the US sell cosmetics; in the EU they don't — so the same word/phrase can mean slightly different things, and you adjust embeddings/distances accordingly. LLMs rely on probabilities from large document corpora, so they rely on the languages of the documents.
- **AI tools to generate topical maps?** Robert: we're all in the same swimming pool playing "predict the next token." Best option is your brain + the simplest ChatGPT to extend what you take from Google (People Also Ask, headings). Senuto is building keyword-relation/graph-based content-map planning but it's not 100% perfect.
- **Conceptual map vs topical map:** a conceptual map shows which concept connects to which; a topical map relies on relevance calculation and shows the pages you should open. Example: instead of opening a page for every air-conditioning brand (diluting ranking signals), put "Dyson" at the center and "alternatives of Dyson" around it (information-retrieval understanding).
- **Authorship/answer formats:** use Siamese-BERT / sentence-BERT (NLP) to score your answers; change the answer and check which structure yields the highest score.
- **Style and tone:** Robert: makes content different from the 85% of AI users; give examples in a prompt ("acting as a Forbes journalist, here's an example article, write in this style").
- **Backlinks:** Koray: not against links — but with semantic SEO your cost per link is much lower (easier to rank without links), and links become the "cherry on top." His rule with unnatural links: if you add one, keep adding (be patternless). With strong semantics you use far fewer links, less frequently, and still dominate.

### Key takeaways
- Robert: think about prompts — feed lots of knowledge on the input side, then expect a good result, fine-tune, iterate. You can add ~16k tokens of input now. Quality over quantity.
- Koray: stop imitating the best-ranking pages; start understanding the fundamental needs of the search engines (especially for the future ecosystem).
