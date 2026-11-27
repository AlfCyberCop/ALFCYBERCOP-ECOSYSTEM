# NEXUS-HARDENER — do caso real à ferramenta reutilizável

**Estado: planeado.** Não confundir com o trabalho de hardening já realizado e documentado.

## Objetivo

Transformar as decisões comprovadas no laboratório num utilitário **Bash modular**, com modos **audit**, **plan**, **apply**, **verify** e **rollback**, sem ações destrutivas implícitas.

## Critérios técnicos

1. Pré-validação da distribuição, versão, serviços, caminhos e privilégios.
2. Dry-run obrigatório antes da primeira aplicação e plano explícito por módulo.
3. Backups versionados, checksums e rollback testável por alteração.
4. Configuração parametrizada sem credenciais ou IPs embutidos.
5. Testes automatizados e validações funcionais: serviço `active` é apenas um dos sinais.
6. Logs de auditoria com data, comando, resultado, mudança e evidência sanitizável.
7. Módulos ativáveis separadamente (SSH, UFW, logs, Auditd, etc.).
8. Respeito pelas dependências e continuidade dos serviços do LAB.

## Integração futura

Pode evoluir para **NEXUS Security Suite**: Hardener + Auditor + Sentinela. O desenho existe; **o produto integrado ainda não existe**.

[Origem técnica](HARDENING-FLINT2.md) · [NEXUS-LAB](NEXUS-LAB.md)
