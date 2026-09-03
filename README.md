# ইস্ত্রি ভাই — Customer + Admin

Files:
- index.html — customer order website
- style.css — customer design
- app.js — customer order + Supabase
- config.js — Supabase URL/key
- admin.html — separate admin login/panel
- admin.css — admin design
- admin.js — admin orders/status
- SETUP.sql — admin RLS policies

## Setup
1. config.js-এ Supabase Project URL ও anon/publishable key দিন।
2. Supabase Authentication > Users থেকে একটি admin email/password user তৈরি করুন।
3. SETUP.sql-এ ADMIN_EMAIL আপনার admin email দিয়ে replace করে SQL Editor-এ run করুন।
4. সব files একই GitHub Pages repository/folder-এ upload করুন।
5. Customer: /index.html
6. Admin: /admin.html

Never put service_role/secret key in config.js.
