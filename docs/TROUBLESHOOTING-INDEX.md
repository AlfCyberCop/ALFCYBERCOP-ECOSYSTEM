# Índice de troubleshooting

| Caso | O que aconteceu | Estado editorial |
|---|---|---|
| Repositórios Kali APT | 404 em pacotes `libpcre2` durante a instalação Suricata | Diagnóstico documentado; preservar saída sanitizada |
| Suricata `eve.json` vazio | Serviço iniciado sem eventos; depois captura na interface adequada | Captura HTTP confirmada; alerta é teste separado |
| Lynis GPG | Fingerprint antiga bloqueou uma ação antes da execução | Incidente e correção a referenciar do projeto Hardening |
| Lynis includes/plugins | Mistura de componentes 3.0.7 / 3.1.7 e `tests_kerberos` ausente | A ligar ao relatório técnico |
| `lynis.timer` | Execução agendada colidiu com auditoria manual | Diagnóstico documentado; confirmar ciclo de reposição |
| Wi-Fi Flint 2 | Cobertura/performance inferior em algumas zonas | **Aberto** — medição e solução pendentes |
| Tripwire cron | Teste de crontab sem alerta observado | **Não inventar deteção**; investigar e relatar |
| Rsyslog/Fail2ban/AppArmor | Recuperações após alterações de hardening | Relacionar logs e decisões na documentação fonte |

Usar [modelo de incidente](../templates/INCIDENT.md). Uma correção só está concluída com reteste observável.
