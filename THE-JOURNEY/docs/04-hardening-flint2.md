# Capítulo 04 — Proteger o servidor era só metade da história

Quando já existiam serviços, aplicações e deteções, surgiu uma pergunta maior: **como proteger um laboratório que partilha infraestrutura com uma casa real?**

O hardening do Ubuntu e a chegada do **GL.iNet Flint 2** não foram aventuras separadas. Sobrepuseram-se. Num lado, configurações, serviços, UFW, Fail2ban, AppArmor, auditoria e Lynis. No outro, gateway, Wi-Fi, router MEO, tráfego do MSI, fronteiras de rede e a ambição de usar Suricata como IPS.

O hardening trouxe a prova de que segurança é também disponibilidade. Houve regressões de pontuação Lynis, um problema com identificação GPG, incompatibilidades em componentes Lynis e uma colisão de execução com `lynis.timer`. O projeto chegou a registar **97/100** — mas a história relevante inclui precisamente os diagnósticos necessários para recuperar estabilidade. Cada incidente técnico terá a sua ficha, com o que foi comprovado e o que ainda ficou por validar.

O Flint 2 chegou para dar mais controlo à rede. Trouxe também um problema incómodo e bastante humano: **o Wi-Fi de casa piorou em zonas onde a ligação precisava de funcionar**. Não vamos maquilhar isso. Antes de festejar uma arquitetura segura, é preciso medir sinal, velocidades, roaming, canais e resultados reais.

Há uma restrição operacional que orienta o futuro IPS: **o MSI e a Kali podem estar desligados durante o curso; a Internet doméstica não pode depender da VM.** O desenho com IPS será opcional, com caminho de retorno validado. Até lá, captura IDS e inspeção em linha são capacidades distintas.

Este capítulo será apresentado como um **diário de investigação**: baseline → incidente → hipótese → alteração → resultado → lição.

**Evidências a reunir:** versões do Lynis e seus resultados, incidentes e correções, configuração da topologia sanitizada e testes Wi-Fi antes/depois.

**Próximo capítulo:** [NEXI — aquilo que ainda vamos recuperar](05-nexi.md).
