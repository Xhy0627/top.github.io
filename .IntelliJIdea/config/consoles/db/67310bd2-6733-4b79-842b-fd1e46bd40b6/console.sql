SELECT
  *
FROM
  un_account
WHERE
  un_account.is_deleted = 0
  AND (
    un_account.unification_id = 15013673332
    OR un_account.account_email = 15013673332
    OR un_account.account_login_name = 15013673332
    OR un_account.account_phone = 15013673332
  )