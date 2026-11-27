# Wazuh + Suricata — quando os eventos começaram a aparecer

## Confirmado em laboratório

- Kali VM: Wazuh **Manager, Indexer e Dashboard** ativos na validação apresentada em conversa.
- Suricata **8.0.8**, com **53 603 regras ativas** no teste de 23/11/2026.
- Captura IDS na interface `eth1`, `eve.json` preenchido com tráfego HTTP da Kali para o servidor do lab.
- **0 perdas de pacotes** nos contadores da amostra apresentada; esta amostra não basta para concluir desempenho sob carga.
- No cenário distinto de **25/11/2026**, teste ICMP com **4 eventos observados e 4 recebidos pelo Wazuh**.

## Ainda por validar

- Cobertura real de todos os segmentos da rede doméstica.
- IPS em linha com bloqueio demonstrado e mecanismo de bypass/retorno sem falha.
- Repetibilidade dos alertas em várias condições de carga e rede.

## Porque interessa

Instalar um IDS não prova cobertura e ter um ficheiro JSON não prova uma investigação completa. A metodologia é **gerar evento → observar sensor → normalizar/recolher → correlacionar → investigar → explicar limitações**.

[Capítulo histórico](../THE-JOURNEY/docs/03-detection.md) · [Roadmap](../ROADMAP.md)
