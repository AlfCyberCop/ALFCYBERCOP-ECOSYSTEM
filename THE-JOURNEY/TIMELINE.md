# Timeline — acontecimentos, não publicidade

> **Três regras:** (1) a data da conversa pode ser diferente da data do acontecimento técnico; (2) cada marco recebe uma fonte antes da publicação final; (3) planos e protótipos nunca aparecem como produção.

| Quando | Acontecimento e significado | Tipo de evidência / confiança |
|---|---|---|
| **24 mar. 2026** | `ALF-CYBERCOP` já era usado como identidade técnica no terminal. A origem exata do nome pode ser anterior. | Referência histórica recuperada; original a anexar |
| **26 maio 2026** | «Quero aplicar em LAB o que aprendi.» O objetivo já não era somente estudar, mas testar. | Citação recuperada; original a validar |
| **04 jul. 2026** | Surge **NEXUS** como nome de colaboração; «AlfCyberCop & Nexus. Comprado.» | Citação recuperada; original a validar |
| **05 jul. 2026** | «Agora estou em PLUS.» Marco de utilização paga documentada, **não data confirmada da primeira subscrição**. | Conversa datada; fatura não verificada |
| **03 ago. 2026** | **NEXUS-CORE / NEXUS-LAB** toma forma como organização de projetos e laboratório. | Conversas históricas; cruzar commits |
| **06–13 ago. 2026** | Construção inicial do servidor Ubuntu e serviços: Linux, SSH, Cockpit, Nginx, PostgreSQL; virtualização. | Conversas técnicas; outputs e commits a anexar |
| **06–07 ago. 2026** | Escolha do nome **NEXI**, seguida da beta Windows. | Histórico de protótipo; código a rever |
| **21 ago. 2026** | Wazuh regista execução `sudo` local — regra **5402**. A primeira prova concreta de monitorização a destacar. | Evento de laboratório registado no histórico |
| **28 ago.–02 set. 2026** | NEXI: identidade, memória, RBAC, Conversation Store PostgreSQL e bridge em prova de conceito. | Logs e código a recuperar; integração pendente |
| **set. 2026** | O ecossistema ganha projetos e repositórios próprios; começa a discussão sobre apresentação pública. | Histórico Git/conversas a cruzar |
| **27 out. 2026** | Aquisição de **alfcybercop.pt**, um endereço próprio para a identidade. | Referência histórica à compra; comprovativo a anexar |
| **29 out.–12 nov. 2026** | Nginx, HTTPS e Let's Encrypt; domínio acessível. Website profissional ainda em construção. | Testes de conectividade/TLS; datas a cruzar |
| **nov. 2026** | Investigação web (SSTI, SSRF, desserialização insegura), forense, SOC e testes controlados. | Relatórios individuais e screenshots selecionados |
| **23 nov. 2026** | Na **Kali**, Suricata 8.0.8 captura HTTP de `eth1` e escreve `eve.json`, com 53 603 regras ativas. | Saídas e JSON de laboratório disponíveis no histórico |
| **24–25 nov. 2026** | Flint 2 entra na rede; começam problemas de cobertura/desempenho Wi-Fi. | Medições, prints e topologia em evolução |
| **25 nov. 2026** | No **Ubuntu NEXUS-LAB**, teste ICMP: **4 eventos enviados pelo MSI e 4/4 recebidos no Wazuh**. | Teste de ponta a ponta documentado; anexar evidências sanitizadas |
| **26–27 nov. 2026** | Hardening do NEXUS-LAB, Lynis, regressões, diagnósticos; registo de resultado até **97/100** e publicação de documentação. | Logs e repositório de hardening; revisão do conteúdo público |
| **27 nov. 2026** | Nasce este projeto narrativo: a decisão de contar a jornada em vez de criar um catálogo de ferramentas. | Conversa editorial |

## O que ainda não vamos datar

- Registo sugerido numa entidade ou plataforma norte-americana ligada à cibersegurança: **a entidade, a data e o significado do registo ainda não estão comprovados**.
- Data exata de subscrição paga do ChatGPT: conhecemos uma **confirmação de uso em 05/07/2026**, não o primeiro recibo.
- Data do primeiro website efetivamente concluído: a disponibilidade HTTPS precedeu a conclusão editorial do site.

## Como fechar uma entrada

Cada marco da tabela pode ser promovido para **verificado** quando tem: conversa/ficheiro/log/commit original identificado, data e timezone, contexto, resultado, limitações e, quando aplicável, evidência pública sanitizada. Ver [registo de evidências](EVIDENCE-REGISTER.md).
