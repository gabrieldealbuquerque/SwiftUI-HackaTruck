# SwiftUI · HackaTruck

Coleção de exercícios de desenvolvimento iOS produzidos durante o HackaTruck, em junho de 2024. Os projetos registram a evolução de layouts declarativos para navegação, mapas e consumo de uma API HTTP com SwiftUI.

Cada pasta contém um aplicativo independente: abra o projeto da aula que deseja explorar no Xcode.

## Percurso de estudos

| Projeto | O que explorar | Conceitos praticados |
| --- | --- | --- |
| [Aula 1](Aulas/Aula1/) | Composição de elementos e exercício de perfil inspirado no Instagram | `VStack`, `HStack`, imagens, formas e modificadores |
| [Aula 2](Aula%202/) | Tela de boas-vindas do HackaTruck com nome editável e alerta | `@State`, `TextField`, `Button`, `alert` e assets |
| [Aula 3](Aula%203/) | Exercício de calculadora de IMC com mudança de cor | Entrada de dados, cálculo e renderização condicional |
| [Aula 4](Aula%204/) | Abas de cores e lista | `TabView`, `tabItem` e composição de views |
| [Aula 4.1](Aula%204.1/) | Navegação entre telas e apresentação modal | `NavigationStack`, `NavigationLink`, passagem de dados e `sheet` |
| [Aula 5](Aula%205/) | HackaFM: lista musical e tela de detalhes | Modelos Swift, `ForEach`, `AsyncImage` e navegação |
| [Aula 6](Aula%206/) | Mapa com seleção de locais e ficha informativa | MapKit, `MapCameraPosition`, anotações e modal |
| [Aula 7](Aula%207/) | Catálogo de ofertas de jogos com página de detalhes | `URLSession`, `Decodable`, `ObservableObject` e `@StateObject` |

A interface musical é um exercício visual: seus ícones de reprodução não implementam um player de áudio. A calculadora de IMC preserva a implementação didática original e não deve ser usada para orientação de saúde.

## Tecnologias

- **Swift 5** e **SwiftUI** para modelos, estado e interface declarativa.
- **Foundation** para requisições HTTP e decodificação JSON.
- **MapKit** para o exercício de mapas.
- **Xcode** e catálogos `Assets.xcassets` para configuração e recursos dos aplicativos.

Os oito projetos estão configurados com deployment target **iOS 17.2** e `SWIFT_VERSION = 5.0`. Não há dependências Swift Package Manager declaradas nos arquivos de projeto.

## Executar no Xcode

É necessário um Mac com Xcode e SDK compatíveis com iOS 17.2 ou superior. Para começar pelo exemplo de integração HTTP:

```bash
git clone https://github.com/gabrieldealbuquerque/SwiftUI-HackaTruck.git
cd SwiftUI-HackaTruck
open "Aula 7/Aula 7.1.xcodeproj"
```

1. Selecione o scheme do aplicativo da aula e um simulador iOS compatível.
2. Execute com **Product → Run** (`⌘R`).
3. Para explorar outra aula, abra seu `.xcodeproj`, sem reunir os exercícios no mesmo target.
4. No dispositivo físico, configure a equipe de assinatura em **Signing & Capabilities**.

As views também incluem `#Preview` para inspeção no canvas do Xcode. Alguns desafios, como `DesafioInstagram`, são views adicionais; o ponto de entrada da Aula 1 continua sendo `ContentView`.

### Projetos disponíveis

```text
Aulas/Aula1/Aula1.xcodeproj
Aula 2/Aula 2.xcodeproj
Aula 3/Aula 3.xcodeproj
Aula 4/Aula 4.xcodeproj
Aula 4.1/Aula 4.1.xcodeproj
Aula 5/Aula 5.xcodeproj
Aula 6/Aula 6.xcodeproj
Aula 7/Aula 7.1.xcodeproj
```

As aulas 5 a 7 usam recursos de rede para imagens, mapas ou dados. A Aula 7 consulta o endpoint CheapShark definido em [`ViewModel.swift`](Aula%207/ViewModel.swift), com filtro da loja `1` e preço até `10`. Os preços são exibidos conforme a implementação original; não existe conversão cambial implementada. Disponibilidade da API e das imagens externas pode afetar a demonstração.

## Estrutura e materiais

- Cada pasta de aula reúne o `.xcodeproj`, as views, os assets e os targets de testes gerados no projeto.
- Modelos e views auxiliares de algumas aulas ficam diretamente na pasta da aula, fora da subpasta do aplicativo; os projetos Xcode mantêm essas referências.
- [`atualizado.json`](atualizado.json) preserva um fluxo Node-RED com operações HTTP e Cloudant. É um material complementar, separado dos aplicativos SwiftUI; sua execução exige configurar o ambiente Node-RED e as credenciais do serviço.
- As imagens versionadas são recursos dos exercícios, como logos, fundos e tabela de IMC. Não há uma galeria de capturas de execução dos apps neste repositório.

## Contexto e créditos

Estudos de [Gabriel de Albuquerque](https://github.com/gabrieldealbuquerque), no contexto das aulas do HackaTruck. Os cabeçalhos originais dos arquivos e os materiais de aula foram preservados.

Marcas, capas musicais, fotografias e demais imagens pertencem aos respectivos titulares e aparecem como material de estudo. A consulta de ofertas é realizada pela API CheapShark; o exemplo não indica afiliação com Steam ou seus jogos.
