# Política de evidências — publicar com segurança

**Não publicar por defeito:** passwords, tokens, chaves privadas, ficheiros `.env`, dumps PostgreSQL, backups, MACs/seriais identificáveis, screenshots de credenciais, logs com dados pessoais, nomes de terceiros e configurações que exponham a rede doméstica.

**Antes de acrescentar um ficheiro:**

1. Identificar o que pretende provar e a fonte temporal.
2. Remover ou substituir informação sensível sem alterar o resultado técnico.
3. Guardar o original fora do Git (pasta `local-private/`, ignorada pelo `.gitignore`).
4. Guardar na versão pública apenas um excerto suficiente e documentar a sanitização.
5. Executar `python tools/validate_repo.py` e `powershell .../Test-Publication.ps1` (se disponível); nenhuma verificação automática garante ausência de segredos.
6. Fazer revisão humana do `git diff --cached` **antes** de `git commit` ou `git push`.

**Estados:** `CONFIRMED` = prova recuperada e revista; `RECONSTRUCTED` = histórico recuperado e ainda a confirmar; `PLANNED` = objetivo sem evidência de implementação.

[Registo de evidências](EVIDENCE-REGISTER.md)
