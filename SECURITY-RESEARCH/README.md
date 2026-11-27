# Security Research

Esta é a secção para experiências **controladas e autorizadas**: aplicações vulneráveis intencionalmente, rede e telemetria, análise forense e resposta a incidentes simulados.

| Linha de investigação | Pergunta orientadora | Evidência pretendida |
|---|---|---|
| AppSec: SSTI, SSRF, desserialização | Como o erro acontece e como o corrigimos? | Antes / depois, testes, fix e reteste |
| Network security | O sensor observa realmente os pacotes? | PCAP sanitizado, contadores e limites da observação |
| SIEM / Detection Engineering | O alerta aparece e é interpretável? | Evento, regra, consulta e validação |
| Incident Response | Que hipótese explicava o comportamento? | Timeline, artefactos, investigação e conclusão |
| Forense | A cadeia de evidência é reprodutível? | Hashes, metodologia e resultados anonimizados |
| File Integrity | Uma alteração controlada foi detetada? | Baseline, evento, ausência de alerta quando aplicável |

O foco do **NEXUS-HARDENER** é Security Engineering; os testes que fundamentam decisões podem ser aqui referenciados sem duplicar código.

Usar [o modelo de estudo de caso](../templates/CASE-STUDY.md) e [a política de publicação](../EVIDENCE/PUBLICATION-POLICY.md).
