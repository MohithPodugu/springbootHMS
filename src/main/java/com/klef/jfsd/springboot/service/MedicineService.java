package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Medicine;
import java.util.List;

public interface MedicineService {
    void addMedicine(Medicine medicine);
    List<Medicine> getAllMedicines();
   
    
    void deleteMedicineById(int id);
}