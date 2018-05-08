//
//  LeaveMachine.swift
//  A million leaves
//
//  Created by Alex Luna on 12/04/2018.
//  Copyright © 2018 Alex Luna. All rights reserved.
//

import Foundation

// MARK: create poem generator engine


// ideias: um enum com 4 casos (depois mais, se possivel), e cada caso tem um randomizer que escolhe um elemento, e dentro das frases, (que inclusive vao virar vars, e não lets, creio, na hora da compilacao), serao escolhidas randomizadas pela maquina)

var sujeito = ["acólito", "amor", "artista", "autor", "calor", "caminho", "canibal", "chão", "ciclo", "conquistador", "coração", "covarde", "crepúsculo", "céu", "círculo", "desejo", "dicionário", "discípulo", "doce", "escuro", "espelho", "estado", "fim", "fogo", "furacão", "golpe", "grão de areia", "guerreiro-trovão", "incompleto", "incêndio", "infinito", "inimigo", "inocente", "inverno", "irmão", "lago", "limite", "livro", "mar", "milênio", "monge", "mundo", "olhar", "passado", "por-do-sol", "progresso", "regente", "relâmpago", "ritual", "sangue", "segredo", "ser", "silêncio", "som", "sábio", "tempo", "tesouro", "universo", "vale", "vapor", "vento", "vermelho", "verão"]

var sujeitos = ["acólitos", "amores", "artistas", "autores", "calores", "caminhos", "canibais", "ciclos", "conquistadores", "corações", "covardes", "crepúsculos", "céus", "círculos", "desejo∫", "dicionários", "discípulos", "doces", "escuros", "espelhos", "estados", "fins", "fogos", "furacões", "golpes", "grãos de areia", "guerreiros-trovão", "incompletos", "incêndios", "infinitos", "inimigos", "inocentes", "invernos", "irmãos", "lagos", "limites", "livros", "mares", "milênios", "monges", "monges", "mundos", "olhares", "passados", "progressos", "regentes", "relâmpagos", "rituais", "sangues", "segredos", "seres", "silêncios", "sons", "sábios", "tempos", "tesouros", "universos", "vales", "vapores", "ventos", "vermelhos", "verões"]

var sujeita = ["Lua", "Terra", "alma", "asa", "bailarina", "base", "beleza", "biblioteca", "borboleta", "brisa", "calma", "caverna", "chama", "chuva", "cor", "corrente de ar", "crença", "deusa", "diferença", "dúvida", "escuridão", "energia", "escolha", "espera", "esperança", "espuma", "estrela", "estátua", "eternidade", "explosão", "face", "fera", "fogueira", "força", "fresta", "fronteira", "história", "humanidade", "incerteza", "leveza do vento", "luta", "lágrima", "língua", "mancha", "marca", "marcha", "mente", "montanha", "máscara", "natureza", "nuvem", "onda", "palavra", "paz", "pedra", "pele", "pureza", "receita",  "rocha", "sabedoria", "semente", "solidão", "terra", "união", "veia", "velocidade", "vida", "vítima", "água", "árvore"]

var sujeitas = ["luas", "terras", "almas", "asas", "bailarinas", "bases", "belezas", "bibliotecas", "borboletas", "brisas", "calmas", "cavernas", "chamas", "chuvas", "cores", "correntes de ar", "crenças", "deusas", "diferenças", "dúvidas", "energias", "escolhas", "esperas", "esperanças", "espumas", "estrelas", "estátuas", "eternidades", "explosões", "faces", "feras", "fogueiras", "forças", "frestas", "fronteiras", "histórias", "incertezas", "lutas", "lágrimas", "línguas", "manchas", "marcas", "marchas", "mentes", "montanhas", "máscaras", "nuvens", "ondas", "palavras", "pedras", "peles", "purezas", "receitas",  "rochas", "sabedorias", "sementes", "veias", "vidas", "vítimas", "águas", "árvores"]

//var verbo = [
//]


// MARK: Openers originais
let openers = [
    "A água evapora na pele ardente",
    "O sangue das veias do sábio vem do Primeiro Rio e flui para o Oceano da Existência.",
    "A brisa sopra a montanha, o furacão sopra a montanha",
    "O monge que serve à pequena deusa é idolatrado e suas palavras serão escutadas por muitos séculos.",
    "A beira do lago, molhada, é lago ou chão?",
    "É hora de esquecer e seguir",
    "Contemplar o por-do-sol é entender a necessidade do escuro.",
    "O olhar fulgurante da beleza acabada.",
    "O vento percorre as maiores distâncias e entra nas menores frestas.",
    "Todos os grãos da montanha alcançam o céu.",
    "A bailarina alcança o céu por mérito próprio",
    "Evaporar é buscar os nutrientes do céu.",
    "Para a água, o alto da montanha é o limite",
    "É tentador evitar a luta.",
    "A montanha acalma a outra montanha,",
    "O ódio do raio não dura",
    "Os ventos levam e trazem o que não estiver amarrado.",
    "Quanto mais alto, mais lento o vento",
    "O verão nasce no inverno",
    "Ao redor do círculo, todos são irmãos",
    "Devagar, dois abrem os portões que conteriam um exército.",
    "Com pressa, não é possível descer uma montanha.",
    "O sábio foge para a montanha para atrair o mundo.",
    "O passado da montanha é a pedra.",
    "É preciso ser incêndio",
    "As lágrimas da montanha",
    "Quando a nuvem está grávida,",
    "O autor invisível",
    "As ondas se rompem na praia",
    "O guerreiro-trovão vence",
    "Se receita para conquistar houvesse,",
    "Todo inimigo são dois",
    "A deusa do universo se entrega",
    "O fogo não teme nem a solidão",
    "A diferença complementa",
    "Os esforços extremos",
    "Eu quero o que eu tenho, ou eu tenho o que quero?",
    "Todo desejo age",
    "O céu nos observa",
    "Do amor que plantas",
    "O artista descobriu",
    "Dentro de mim, um inimigo",
    "Toda a sabedoria do mundo reunida,",
    "Na face calma se esconde a emoção,",
    "A marcha é a velocidade da água,",
    "Trovão no lago",
    "Alimento oferecido",
    "Um cortejo fúnebre",
    "Dentro está a resposta",
    "O conquistador da montanha",
    "Andar altivo",
    "Manchas de tinta",
    "Céu e abismo,",
    "Jovem virgem e velho sábio",
    "Juntos explodimos",
    "O silêncio",
    "Faíscas no peito",
    "Trombetas de luz",
    "Há mais força no rendido que no derrotado",
    "A fogueira é o centro da sala.",
    "Tive medo de descer",
    "Amor se aprende",
    "A pureza do gosto de sangue",
    "O covarde é absoluto",
    "Quem guarda o segredo,",
    "Nenhuma espera é infinita.",
    "A minha máscara",
    "Cores do crepúsculo",
    "Mestre forte, discípulo fraco.",
    "Os opostos criam."]

let middlers = [
    "Opostos incompatíveis se destroem",
    "Com a selvagem paz de entender a língua dos homens e dos anjos,",
    "E no entanto a vida flui.",
    "Mas o humilde monge não tem nada a dizer.",
    "A espuma da onda vira terra e vira mar",
    "O vento levará tudo, grão a grão.",
    "Não duvido da incerteza permanente.",
    "A cor tatuada no vento indica a direção perfeita.",
    "Ao juntar-se a outra corrente de ar, adquire mais força.",
    "A base é mais forte do que o regente no topo.",
    "Raízes não impedem a árvore de crescer",
    "A chuva molha para elevar-se outra vez.",
    "Exceto se não tiver medo da companhia do fogo",
    "Quem chega ao céu por vontade própria",
    "Dentro do vale tudo é temporário, menos o tempo.",
    "Amorosas, as montanhas se eternizam",
    "A mente se fecha e o coração se abre",
    "A força vem dos pequenos gestos",
    "Dentro da terra, a semente espera",
    "As nossas histórias pertencem à toda a raça",
    "Cruzar a fronteira não significa nenhum esforço.",
    "Quem se retira nunca é vencido pela velocidade.",
    "Veloz, o relâmpago acende a beleza da vida.",
    "No topo, o pequeno grão de areia é soberano.",
    "Quem não queima não brilha",
    "Não são capazes de apagar o fogo",
    "A espera será frutífera.",
    "Escuta os olhos se apertarem",
    "Uma rocha impassível se quebra",
    "Por instante que dura uma eternidade",
    "Quem tivesse o maior tesouro da humanidade",
    "Antes do golpe fatal que os derrota",
    "Porque controla o seu próprio fogo",
    "Queima e alimenta-se de suas vítimas",
    "Não há encaixe entre imperfeitos",
    "São todos feitos na hora da exaustão.",
    "Há muito mais dúvidas quando alguém se olha no espelho",
    "A imóvel estátua dança",
    "Pronto para devorar o mundo",
    "O mundo inteiro colherá",
    "Que só o novo pode ser criado.",
    "Mais forte do que o universo:",
    "Uma biblioteca de infinitas combinações.",
    "Antes de explodir, a pólvora é pó cinzento e morto.",
    "Superior à força da rocha.",
    "A violenta espera pelo fim da guerra",
    "O que o tempo nos dá, toma",
    "Carregando todas as minhas crenças de infância",
    "O universo em um biscoito",
    "Captura a leveza do vento com o olhar",
    "Carrega a chama secreta",
    "Evaporando pelo infinito",
    "Só há um delicado caminho entre os dois:",
    "Não podem ter absolutamente nada em comum,",
    "Nada é criado sem conflito",
    "É o estado do som",
    "Quebram o meu silêncio",
    "A chuva invade o lago com gotas lancinantes",
    "O humilde sábio beija o chão sereno e agradecido",
    "Teus olhos só brilham quando queima o desejo.",
    "Jurei nunca mais subir naquela montanha-russa",
    "Através de marcas que expõem passados",
    "É um mistério para todos aqueles que evitam a luta",
    "Só há dúvidas no coração do guerreiro",
    "O acólito, o ritual ou o silêncio?",
    "Rufam tambores e asas de borboleta.",
    "é um espelho",
    "Na escuridão completa, o sábio reflete",
    "Discípulo sábio, mestre fraco.",
    "Liberdade vicia. Amor prende. Paixão mata. Distância aproxima. Gritos silenciam."]

let closers = [
    "Recomeçam juntos para ir mais longe",
    "Um milênio se conta em segundos.",
    "A força que não resiste é mais forte.",
    "Meditar é assistir a explosões internas.",
    "Meu mundo é a união do meu ser com o universo",
    "E a Terra fica.",
    "E enquanto isso, marchamos.",
    "É preciso buscar eternamente o fim para não encontrá-lo.",
    "Pequenas palavras e grandes ventos erguem montanhas.",
    "Para a nuvem, a beleza está no chão.",
    "Farfalhando música",
    "Nenhum obstáculo quebra o ciclo.",
    "Maquiagem de vapor.",
    "Não pode fugir das suas escolhas.",
    "Recebe-se o que se cede.",
    "Grãos de areia se empilham no infinito.",
    "No céu, há estrelas.",
    "Cresça com ordem.",
    "Morrer é não plantar.",
    "Calor e brilho nos olhos.",
    "O mais lento evolui mais rápido.",
    "Calma obstinada.",
    "Por baixo da serenidade se encontra a fera.",
    "Esquecimento não é justiça.",
    "Madeira que cupim não rói.",
    "Que ilumina as cavernas da alma.",
    "Tornado e orvalho.",
    "Enfocando segredos.",
    "Em infinitos grãos de areia.",
    "Júbilo momentâneo.",
    "Nunca entregaria de graça.",
    "Só o inocente não vê.",
    "Na ponta da língua.",
    "É o canibal da natureza.",
    "Tartaruga em cima da árvore.",
    "Amanhecerá.",
    "Do que quando vê a realidade.",
    "Ao redor da Lua.",
    "E tudo que é bom.",
    "A energia.",
    "Equilibrado no ar.",
    "O rei da esperança.",
    "Qual é o seu livro preferido?",
    "Um golpe fatal. Como escolher prioridades?",
    "Pressa controlada.",
    "Silêncio.",
    "Veneno que vem de dentro.",
    "Renascimento.",
    "Doce.",
    "Vermelho.",
    "Para aquecer-te.",
    "Dicionário.",
    "Humildade.",
    "Exceto o futuro.",
    "E vi que era bom.",
    "Incompleto.",
    "Como trovões.",
    "Entrega-se para vencer.",
    "Quando levanta os olhos, tudo é progresso.",
    "Esperança de incêndio.",
    "Quem perde, perde três vezes.",
    "Só nos cobre a memória.",
    "Irresistível.",
    "E um olhar de abandono.",
    "Muda.",
    "E o mundo muda.",
    "da minha alma.",
    "Sabedoria.",
    "Discípulo forte, mestre sábio.",
    "Nada somos."]

struct Poem {
    var start: String
    var middle: String
    var leEnd: String
    
    init() {
        start = openers[Int(arc4random_uniform(UInt32(openers.count)))]
        middle = middlers[Int(arc4random_uniform(UInt32(middlers.count)))]
        leEnd = closers[Int(arc4random_uniform(UInt32(closers.count)))]
    }

    func fullPoem() -> String {
        return "\(start) \n\(middle) \n\(leEnd)"
    }
}

func randomPoem() {
    let text = Poem()
    print(text.fullPoem())
}
