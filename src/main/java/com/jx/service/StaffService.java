package com.jx.service;

import com.jx.entity.Staff;

import java.util.List;

public interface StaffService {

    public List<Staff> queryAllFile();

    public List<Staff> queryFile(Staff staff);

    public int addFile(Staff staff);

    public int updateFile(Staff staff);

    public int deleteFile(String staffId);
}
