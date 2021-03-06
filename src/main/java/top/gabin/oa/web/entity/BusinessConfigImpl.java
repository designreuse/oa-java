/**
 * Copyright (c) 2015 云智盛世
 * Created with BusinessConfigImpl.
 */
package top.gabin.oa.web.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @author linjiabin  on  15/12/20
 */
@Entity
@Table(name = "edy_business_config")
public class BusinessConfigImpl implements BusinessConfig, Serializable {
    @Id
    @TableGenerator(name = "business_config_sequences", table = "edy_sequences", pkColumnName = "sequence_name",
            valueColumnName = "sequence_next_hi_value", initialValue = 20, allocationSize = 50)
    @GeneratedValue(generator = "business_config_sequences", strategy = GenerationType.TABLE)
    @Column(name = "id")
    private Long id;
    @Column(name = "label")
    private String label;
    @Column(name = "config_key")
    private String key;
    @Column(name = "config_value")
    private String value;
    @Column(name = "required")
    private boolean required = false;
    @Column(name = "description")
    private String desc;
    @ManyToOne(targetEntity = BusinessTypeImpl.class)
    @JoinColumn(name = "type_id")
    private BusinessType businessType;

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String getLabel() {
        return label;
    }

    @Override
    public void setLabel(String label) {
        this.label = label;
    }

    @Override
    public String getKey() {
        return key;
    }

    @Override
    public void setKey(String key) {
        this.key = key;
    }

    @Override
    public String getValue() {
        return value;
    }

    @Override
    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean isRequired() {
        return required;
    }

    @Override
    public void setRequired(boolean required) {
        this.required = required;
    }

    @Override
    public String getDesc() {
        return desc;
    }

    @Override
    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public BusinessType getBusinessType() {
        return businessType;
    }

    @Override
    public void setBusinessType(BusinessType businessType) {
        this.businessType = businessType;
    }
}
