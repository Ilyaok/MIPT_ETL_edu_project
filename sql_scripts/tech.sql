commit;

select * from DBA_SEGMENTS;

select * from demipt2.gold_stg_dim_accounts;
select * from demipt2.gold_stg_dim_accounts_del;
select * from demipt2.gold_dwh_dim_accounts_hist;

select * from demipt2.gold_stg_dim_cards;
select * from demipt2.gold_stg_dim_cards_del;
select * from demipt2.gold_dwh_dim_cards_hist;

select * from demipt2.gold_stg_dim_clients;
select * from demipt2.gold_stg_dim_clients_del;
select * from demipt2.gold_dwh_dim_clients_hist;

select * from demipt2.gold_meta_bank;

SELECT * FROM BANK.ACCOUNTS a ;
SELECT * FROM BANK.CARDS c ;
SELECT * FROM BANK.CLIENTS c ;

drop table demipt2.gold_stg_dim_accounts;
drop table demipt2.gold_stg_dim_accounts_del;
drop table demipt2.gold_dwh_dim_accounts_hist;

drop table demipt2.gold_stg_dim_cards;
drop table demipt2.gold_stg_dim_cards_del;
drop table demipt2.gold_dwh_dim_cards_hist;

drop table demipt2.gold_stg_dim_clients;
drop table demipt2.gold_stg_dim_clients_del;
drop table demipt2.gold_dwh_dim_clients_hist;




