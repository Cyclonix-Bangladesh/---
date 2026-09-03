-- Run after creating an admin user in Supabase Authentication > Users.
-- Replace ADMIN_EMAIL with the exact admin email.
create policy "Admins can read orders" on public.orders for select to authenticated using (auth.jwt()->>'email' = 'ADMIN_EMAIL');
create policy "Admins can update orders" on public.orders for update to authenticated using (auth.jwt()->>'email' = 'ADMIN_EMAIL') with check (auth.jwt()->>'email' = 'ADMIN_EMAIL');
