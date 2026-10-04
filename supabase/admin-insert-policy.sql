-- Run this once in Supabase SQL Editor.
-- It allows approved Sigma admins to manually create releases directly from the admin board.

drop policy if exists "admins can insert submissions" on public.submissions;
create policy "admins can insert submissions"
on public.submissions
for insert
to authenticated
with check (
  public.is_sigma_admin()
  and status in ('pending', 'accepted')
);
