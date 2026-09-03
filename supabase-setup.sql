create table public.orders (
 id bigint generated always as identity primary key,
 order_id text unique not null,
 name text not null,
 phone text not null,
 address text not null,
 items jsonb not null,
 total numeric not null,
 status text not null default 'New',
 created_at timestamptz not null default now()
);
alter table public.orders enable row level security;
create policy "Anyone can place orders" on public.orders for insert to anon with check (true);
create policy "Authenticated admins can view orders" on public.orders for select to authenticated using (true);
create policy "Authenticated admins can update orders" on public.orders for update to authenticated using (true) with check (true);
