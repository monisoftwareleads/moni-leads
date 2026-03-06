# Moni Leads — Guia de Deploy

Siga os passos abaixo para colocar o app no ar **gratuitamente** com banco de dados persistente.

---

## PASSO 1 — Criar conta no Supabase (banco de dados)

1. Acesse **https://supabase.com** e clique em **Start your project**
2. Faça login com sua conta Google ou GitHub
3. Clique em **New Project**
4. Preencha:
   - **Name:** moni-leads
   - **Database Password:** crie uma senha forte (guarde!)
   - **Region:** South America (São Paulo)
5. Clique em **Create new project** e aguarde ~2 minutos

---

## PASSO 2 — Criar as tabelas no Supabase

1. No painel do Supabase, clique em **SQL Editor** (menu lateral)
2. Clique em **New query**
3. Copie **todo o conteúdo** do arquivo `supabase-setup.sql`
4. Cole na caixa de texto e clique em **Run**
5. Deve aparecer "Success" em verde ✅

---

## PASSO 3 — Pegar as chaves do Supabase

1. No menu lateral, clique em **Settings** → **API**
2. Copie:
   - **Project URL** (começa com `https://`)
   - **anon public** key (chave longa)

---

## PASSO 4 — Criar conta no GitHub e subir o código

1. Acesse **https://github.com** e crie uma conta gratuita
2. Clique em **New repository**
3. Nome: `moni-leads`, deixe **Public**, clique em **Create repository**
4. Faça upload de todos os arquivos desta pasta para o repositório
   *(pode arrastar e soltar os arquivos na interface do GitHub)*

---

## PASSO 5 — Hospedar no Vercel

1. Acesse **https://vercel.com** e faça login com sua conta GitHub
2. Clique em **Add New → Project**
3. Selecione o repositório `moni-leads`
4. Antes de clicar em Deploy, clique em **Environment Variables** e adicione:

   | Nome | Valor |
   |------|-------|
   | `VITE_SUPABASE_URL` | URL do seu projeto Supabase |
   | `VITE_SUPABASE_ANON_KEY` | Chave anon do Supabase |

5. Clique em **Deploy** e aguarde ~1 minuto
6. O Vercel vai gerar um link tipo `https://moni-leads.vercel.app` 🎉

---

## Pronto!

- O app estará acessível via internet pelo link do Vercel
- Todos os visitantes e leads ficam salvos no Supabase
- Qualquer pessoa com o link pode acessar e cadastrar
- Os dados **não se perdem** — ficam no banco de dados

## Dicas

- Para ver os dados diretamente: Supabase → **Table Editor**
- Para exportar CSV: Supabase → Table Editor → clique na tabela → **Export**
- Se precisar resetar os dados: Supabase → SQL Editor → `DELETE FROM leads; DELETE FROM visitantes;`
