package com.example.ecommerce.model;

public class Address {

    private int id;
    private String specify;
    private String ward;
    private String district;
    private String province;
    private int id_user;

    public Address(int id, String specify, String ward, String district, String province, int id_user){
        this.id = id;
        this.specify = specify;
        this.ward = ward;
        this.district = district;
        this.province = province;
        this.id_user = id_user;
    }

    // Getter methods
    public int getId() {
        return id;
    }

    public String getSpecify() {
        return specify;
    }

    public String getWard() {
        return ward;
    }

    public String getDistrict() {
        return district;
    }

    public String getProvince() {
        return province;
    }

    public int getIdUser() {
        return id_user;
    }

    // Setter methods
    public void setId(int id) {
        this.id = id;
    }

    public void setSpecify(String specify) {
        this.specify = specify;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setIdUser(int id_user) {
        this.id_user = id_user;
    }
}