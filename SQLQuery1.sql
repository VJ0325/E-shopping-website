

select*from ItemMst
select distinct IID,IName from ItemMst


update ItemMst set Quantity=Quantity+@Quantity where IID=@ID
update ItemMst set Qnt=Qnt+1 where IID=3

select IName,Quantity,isnull (AvailableQnt,0)as AvailableQnt ,isnull(StockQnt,4)as StockQnt from ItemMst