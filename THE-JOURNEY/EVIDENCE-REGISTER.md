# Registo de evidências — mapa de fontes

> Os itens abaixo são **pedidos de preservação e revisão**, não links inventados para ficheiros. Só passam a públicos depois de sanitizados.

| ID | Episódio | Evidência a recuperar | Próximo passo |
|---|---|---|---|
| EV-01 | A curiosidade inicial | Conversa de 26/05/2026 com a intenção de aplicar no LAB | Confirmar citação literal e contexto |
| EV-02 | Nome NEXUS | Conversa de 04/07/2026 com «Comprado» | Confirmar texto e horário |
| EV-03 | Plus e colaboração | Conversa de 05/07/2026; recibo se necessário | Distinguir uso pago de início de subscrição |
| EV-04 | Servidor inicial | Prints Linux, inventário Dell, rede e serviços | Sanitizar e datar |
| EV-05 | Primeiro Wazuh observável | Evento de 21/08/2026, regra 5402, `sudo` | Preservar JSON sem dados desnecessários |
| EV-06 | NEXI beta | Código Windows, screenshots e store PostgreSQL | Testar estado e identificar funcionalidades reais |
| EV-07 | Domínio e HTTPS | Confirmação de compra, configuração TLS e testes de 12/11 | Anexar sem dados de faturação |
| EV-08 | Suricata Kali | Teste de 23/11: serviço, regras, `eve.json` e HTTP 301 | Extrair poucos eventos relevantes e anonimizar |
| EV-09 | Suricata → Wazuh | Teste de 25/11: 4 pings, 4 deteções recebidas | Separar claramente do teste Kali de 23/11 |
| EV-10 | Hardening | Lynis, diff de medidas, incidentes de GPG, includes e timer | Referenciar repositório já publicado e verificar cronologia |
| EV-11 | Flint 2 e Wi-Fi | Testes de cobertura/velocidade e ajustes | Não declarar resolução sem comparativo |
| EV-12 | Estimativa de esforço | Registo de conversa de 27/11 com intervalos por área | Mostrar intervalo e pressupostos, não «horas gastas» medidas |
| EV-13 | Registo nos EUA | Nome da entidade, confirmação e data | Não publicar até recuperar prova |

## Template mínimo para cada caso

- **Pergunta:** que queríamos descobrir?
- **Ambiente:** onde e em que condições?
- **Hipótese:** o que esperávamos?
- **Teste:** o que executámos?
- **Observação:** o que aconteceu?
- **Limite:** o que o teste NÃO prova?
- **Correção:** o que mudou e porquê?
- **Reteste:** como validámos?
**Fonte:** screenshot, log, commit ou conversa original.
