# Hardening — notas do artefacto consultado (27/11/2026)

Este índice sintetiza o README existente da documentação do hardening recuperada da Biblioteca do projeto, **sem copiar ficheiros ou relatórios privados para o Git público**.

- Baseline: Lynis 3.0.7, 59/100, 268 testes, 1 plugin.
- Final: Lynis 3.1.7, 97/100, 269 testes, 0 plugins, 337/347 pontos brutos, 0 avisos no resumo, 0 falhas systemd.
- Testes de Fail2ban, Tripwire, receção remota de logs e backups registados na documentação.
- Foram verificados 21 checksums internos; checkpoint externo de 715 MiB verificado com SHA-256. Não representa recuperação bare-metal.
- Riscos residuais e verificações pendentes explicitados no relatório original.

**Cautela:** a diferença de +38 é histórica, não uma métrica homogénea de melhoria de segurança. Não substituir o relatório fonte por esta síntese.

O link ao repositório técnico é mantido em aberto até existir URL verificado: [LINK-REGISTRY](../INTEGRATIONS/LINK-REGISTRY.md).
