-- =====================================================
-- MONI LEADS — Script de criação das tabelas
-- Execute no Supabase: SQL Editor → New Query → Run
-- =====================================================

-- Tabela de Visitantes
CREATE TABLE IF NOT EXISTS visitantes (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nome TEXT NOT NULL,
  empresa TEXT,
  whatsapp TEXT,
  atendente TEXT,
  obs TEXT,
  data_hora TIMESTAMPTZ DEFAULT NOW()
);

-- Tabela de Leads (Potenciais Clientes)
CREATE TABLE IF NOT EXISTS leads (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT,
  whatsapp TEXT,
  empresa TEXT,
  cargo TEXT,
  cidade_estado TEXT,
  qtd_contas TEXT,
  qtd_portarias TEXT,
  software_atual TEXT,
  software_outro TEXT,
  segmento TEXT[],
  interesse TEXT[],
  temperatura TEXT,
  atendente TEXT,
  obs TEXT,
  data_hora TIMESTAMPTZ DEFAULT NOW()
);

-- Habilitar acesso público (leitura e escrita sem autenticação)
-- Necessário para o app funcionar sem login
ALTER TABLE visitantes ENABLE ROW LEVEL SECURITY;
ALTER TABLE leads ENABLE ROW LEVEL SECURITY;

CREATE POLICY "acesso_publico_visitantes" ON visitantes
  FOR ALL USING (true) WITH CHECK (true);

CREATE POLICY "acesso_publico_leads" ON leads
  FOR ALL USING (true) WITH CHECK (true);
