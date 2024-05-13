namespace invrec.db;

context transactional {
    entity ecomm_mat {
        key material : String(18);
            quantity : Int16
    }

    entity sap_mat {
        key material : String(18);
            quantity : Int16
    }

    entity final_list {
        key material: String(18);
            quantity: Int16;
            diff: Int16;
            stat: String(1)
    }
}