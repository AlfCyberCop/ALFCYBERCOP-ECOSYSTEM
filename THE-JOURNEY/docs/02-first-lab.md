# Capítulo 02 — Um laboratório não nasce pronto

Uma coisa é desenhar um diagrama. Outra é fazer os sistemas comunicarem entre si.

No verão de 2026, o **NEXUS-CORE** começou a organizar ideias que já pediam uma casa comum. O **NEXUS-LAB** tornou-se essa casa: Ubuntu num equipamento disponível, MSI Titan, Kali e Windows em máquinas virtuais, NAT, host-only, serviços e aplicações.

O servidor físico ganhou vida com SSH, Cockpit, Nginx, PostgreSQL e ferramentas próprias. A diferença mais importante não era a quantidade de software instalado: era já ser possível **comparar a arquitetura desenhada com o comportamento real**.

As redes virtuais trouxeram as primeiras lições duradouras: uma VM comunicar com um servidor não prova que observe a rede inteira; uma porta aberta não revela, por si, porquê; um serviço `active` não é sinónimo de função validada.

A partir daí o laboratório tornou-se um espaço de engenharia, não uma coleção de VMs.

**Evidências a reunir:** primeira máquina, versão do Ubuntu, topologias por data, primeiros serviços, testes de acesso e alterações significativas. Publicar exemplos sanitizados, nunca a configuração privada completa.

**Próximo capítulo:** [Atacar, observar, detetar](03-detection.md).
