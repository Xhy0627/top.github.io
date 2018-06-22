use uasc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  un_account.unification_id,
  un_account.account_login_name,
  un_account.account_email,
  un_account.account_phone,
  un_account.account_pwd,
  un_account.account_status,
  un_account.spa_id,
  un_account.account_type,
  un_account.is_deleted
FROM
  un_account
WHERE
  un_account.is_deleted = 0
  AND (
    un_account.unification_id = 15013673325
    OR un_account.account_email = 15013673325
    OR un_account.account_login_name = 15013673325
    OR un_account.account_phone = 15013673325
  );
;-- -. . -..- - / . -. - .-. -.--
SELECT
  un_account.unification_id,
  un_account.account_login_name,
  un_account.account_email,
  un_account.account_phone,
  un_account.account_pwd,
  un_account.account_status,
  un_account.spa_id,
  un_account.account_type,
  un_account.is_deleted
FROM
  un_account
WHERE
  un_account.is_deleted = 0
  AND (
    un_account.unification_id = 15013673332
    OR un_account.account_email = 15013673332
    OR un_account.account_login_name = 15013673332
    OR un_account.account_phone = 15013673332
  );
;-- -. . -..- - / . -. - .-. -.--
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
  );