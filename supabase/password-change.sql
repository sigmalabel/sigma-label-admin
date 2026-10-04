-- Optional: track when an admin last changed their password.
-- Passwords are stored only in Supabase Auth (auth.users), never in public tables.
-- Run this once in Supabase SQL Editor if you want password_updated_at on admin_profiles.

alter table public.admin_profiles
  add column if not exists password_updated_at timestamptz;
