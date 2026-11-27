# Hardening + Flint 2 — proteger sem quebrar o que funciona

**Porquê juntos?** Porque o hardening do Ubuntu e a evolução da rede doméstica aconteceram em paralelo, no mesmo laboratório real. Proteger serviços e proteger tráfego são camadas distintas, mas dependentes.

## Hardening do Ubuntu — registado

- Intervenção entre **25 e 27 de novembro de 2026** sobre Ubuntu físico 22.04 LTS.
- Lynis: baseline histórica **59/100** (3.0.7) → final registado **97/100** (3.1.7), com 269 testes finais e zero avisos no resumo.
- Comparação **não homogénea**: versão, testes e plugins alteraram-se. Não traduzir em «97% seguro».
- Controlos e métodos: SSH, UFW, Fail2ban, Auditd, logs, Tripwire, isolamento de serviços, validações, backups e recuperação.
- Troubleshooting real: GPG, mistura de includes/plugins Lynis, conflito com `lynis.timer`, regressões intermédias, rsyslog, AppArmor, Fail2ban, testes e revalidações.

**Fonte existente:** documentação de hardening já produzida. O URL exato do repositório independente será ligado **após verificação** em [INTEGRATIONS/LINK-REGISTRY.md](../INTEGRATIONS/LINK-REGISTRY.md). O código do hardening **não é duplicado** aqui.

## Flint 2 — o outro lado

- Escolha de router GL.iNet Flint 2 baseado em OpenWrt, sem substituir automaticamente o equipamento do operador.
- Procura de controlo sobre gateway, firewall, Wi-Fi e arquitetura futura de inspeção de tráfego.
- **Problema ainda aberto:** cobertura e desempenho Wi-Fi aquém do desejado em zonas da casa.
- Trabalho seguinte: baseline por divisão, RSSI/canais/bandas, testes antes/depois e documentação do resultado real.

## Restrição operacional decisiva

A **Kali no MSI** pode estar desligada durante o curso. A Internet doméstica **não pode depender** do Suricata/VM. Um IPS opcional requer topologia que atravesse o sensor, fallback comprovado e testes de falha. Atualmente, não declarar isso implementado.

## O futuro NEXUS-HARDENER

O software futuro terá pré-checks, módulos, registo de alterações, backups, validação e rollback. [Especificação](NEXUS-HARDENER.md).

[Capítulo da história](../THE-JOURNEY/docs/04-hardening-flint2.md) · [Registo de evidências](../EVIDENCE/EVIDENCE-REGISTER.md)
