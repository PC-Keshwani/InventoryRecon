using { invrec.db.transactional } from '../db/dbmodel';

service dbservice  {

   
    entity ecommatSet  
         as projection on transactional.ecomm_mat;
    entity sapmatSet 
         as projection on transactional.sap_mat;
    entity final
         as projection on transactional.final_list;     

     function reconci() returns Boolean;    
}

