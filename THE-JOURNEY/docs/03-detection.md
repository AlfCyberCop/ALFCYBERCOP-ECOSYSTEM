# Capítulo 03 — Só acreditámos quando vimos o evento

Os testes de cibersegurança começaram a responder a perguntas cada vez mais concretas: **que atividade deixa rastos? Como diferenciamos tráfego normal de um comportamento suspeito? E que evidência realmente prova uma deteção?**

Em agosto de 2026, o Wazuh já devolvia eventos reais, incluindo uma execução `sudo` local associada à regra **5402**. Não era uma captura de ecrã de um dashboard vazio: havia uma ação, um evento, uma regra e uma interpretação possível.

Depois vieram experiências controladas com autenticação, análise de logs Windows/Linux, segurança de aplicações (SSTI, SSRF e desserialização insegura), observação com Wireshark e exercícios forenses. Cada experiência foi ganhando o formato **hipótese → teste → evento → correção → reteste**.

Em **23 de novembro**, a Kali recebeu Suricata **8.0.8**, carregou **53 603 regras** e capturou uma transação HTTP enviada ao NEXUS-LAB na interface `eth1`, registada em `eve.json`. Isto provou captura IDS. **Não provou IPS em linha, nem cobertura de toda a casa.**

Em **25 de novembro**, um cenário distinto registou **quatro eventos ICMP produzidos pelo MSI e quatro recebidos no Wazuh**, a partir do sensor no Ubuntu NEXUS-LAB. Pela primeira vez, o ciclo completo podia ser contado com uma medida concreta de ponta a ponta: **4/4**.

É assim que queremos escrever: sem transformar um `systemctl active` num sucesso que o teste ainda não demonstrou.

**Evidências a reunir:** alerta Wazuh de agosto, exemplos de JSON Suricata, prints do 4/4 e relatórios dos exercícios controlados.

**Próximo capítulo:** [Quando o hardening encontrou a rede](04-hardening-flint2.md).
