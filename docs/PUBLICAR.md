# Publicação em camadas

**Local → revisão → GitHub privado → revisão → GitHub público → site.**

- **Local:** extrair no E:, abrir os documentos, confirmar nomes e datas.
- **Git privado:** commit inicial com autoria configurada pelo utilizador; nenhum `push` automático neste pacote.
- **Revisão editorial:** confirmar citações e datas, corrigir estados, completar links reais; não repetir segredos nos commits.
- **Integração:** repositórios técnicos originais ligados em `INTEGRATIONS/LINK-REGISTRY.md`.
- **Website:** páginas-resumo em alfcybercop.pt que apontam para documentos GitHub estáveis.
- **NEXI:** integração futura com permissões mínimas e registos, nunca credenciais em código.

**Importante:** um repositório privado pode ser tornado público apenas após revisão **de todo o histórico Git**, porque apagar um ficheiro do último commit não apaga necessariamente o segredo do histórico anterior.
