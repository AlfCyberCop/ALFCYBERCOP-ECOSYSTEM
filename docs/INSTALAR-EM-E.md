# Instalação no Windows — E:\NEXUS-HISTORY\ALFCYBERCOP-ECOSYSTEM

**A pasta no disco E: só pode ser criada no teu próprio MSI.** Este pacote traz os ficheiros preparados e um instalador PowerShell não destrutivo.

## Instalação em 3 passos

1. Extrair o ZIP inteiro para uma pasta temporária (por exemplo, `Downloads\ALFCYBERCOP-STAGING`), preservando a estrutura.
2. Abrir PowerShell nessa pasta e executar `./INSTALAR-EM-E.ps1` (ou abrir o script para o rever primeiro).
3. Verificar `E:\NEXUS-HISTORY\ALFCYBERCOP-ECOSYSTEM\README.md`, depois abrir a pasta no VS Code.

O instalador **não substitui** uma pasta de destino já existente, nem apaga dados. Se Git não estiver instalado, copia os documentos e explica como inicializar Git mais tarde. Não cria repositório remoto nem faz `push`.

## Primeiro commit (quando estiveres satisfeito)

```powershell
Set-Location 'E:\NEXUS-HISTORY\ALFCYBERCOP-ECOSYSTEM'
git status
git config --global user.name 'AlfCyberCop'
# Usa o endereço Git que preferires; não inserir email em ficheiros públicos.
git add .
git diff --cached --stat
git diff --cached
git commit -m 'docs: bootstrap ALFCYBERCOP ECOSYSTEM'
```

O script de instalação também configura a branch `main` caso esteja disponível `git`. Não configura o teu email de Git automaticamente.

## Criar o repositório GitHub — só depois de rever

Instalar/autenticar GitHub CLI (`gh auth login`) e executar manualmente, **a partir da pasta do projeto**:

```powershell
gh repo create AlfCyberCop/ALFCYBERCOP-ECOSYSTEM --private --source=. --remote=origin --push
```

Este comando **cria um repositório privado e envia o commit local**. Não o executar até rever documentos, fontes e evidências. Torná-lo público é outra decisão posterior.

Se a conta GitHub não tiver permissão ou já existir o repositório, o comando mostra o erro: **não substituas nada automaticamente**.

[Guia de publicação](PUBLICAR.md) · [Regra de evidências](../EVIDENCE/PUBLICATION-POLICY.md)
