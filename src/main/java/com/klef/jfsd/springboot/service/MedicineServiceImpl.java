package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Medicine;
import com.klef.jfsd.springboot.repository.MedicineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MedicineServiceImpl implements MedicineService {

    @Autowired
    private MedicineRepository medicineRepository;

    @Override
    public void addMedicine(Medicine medicine) {
        medicineRepository.save(medicine);
    }

    @Override
    public List<Medicine> getAllMedicines() {
        return medicineRepository.findAll();
    }

   
    


    @Override
    public void deleteMedicineById(int id) {
        medicineRepository.deleteById(id);
    }
}