package top.gabin.oa.web.constant;

/**
 * ------------------------------
 * ---------  考勤规则  ----------
 * ------------------------------
 * @author linjiabin  on  15/12/21
 */
public enum AttendanceRuleType {
    WORK_FIT("上班打卡时间规则", 0),
    LEAVE_FIT("下班打卡时间规则", 1),
    WORK_UN_FIT("上班不需要打卡", 2),
    LEAVE_UN_FIT("下班不需要打卡", 3)
    ;
    private String label;
    private Integer type;

    AttendanceRuleType(String label, Integer type) {
        this.label = label;
        this.type = type;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public static AttendanceRuleType instance(Integer type) {
        for (AttendanceRuleType attendanceRuleType : AttendanceRuleType.values()) {
            if (attendanceRuleType.getType() == type) {
                return attendanceRuleType;
            }
        }
        return null;
    }

}
