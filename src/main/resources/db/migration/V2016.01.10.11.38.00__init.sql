INSERT INTO `edy_permission` (`id`, `name`, `label`, `pid`)
VALUES
	(1000, 'permission_admin_top', '权限', NULL),
	(2000, 'permission_human_top', '人力', NULL),
	(3000, 'permission_attendance_top', '考勤', NULL),
	(10000, 'permission_admin_manager', '权限设置', 1000),
	(20000, 'permission_department_manager', '部门', 2000),
	(21000, 'permission_employee_manager', '员工', 2000),
	(30000, 'permission_attendance_manager', '数据管理', 3000),
	(31000, 'permission_leave_manager', '行政管理', 3000),
	(32000, 'permission_leave_rule_manager', '规则设置', 3000),
	(100000, 'permission_admin', '管理员设置', 10000),
	(200000, 'permission_department', '部门管理', 20000),
	(210000, 'permission_employee', '员工管理', 21000),
	(300000, 'permission_attendance', '基础数据', 30000),
	(310000, 'permission_leave', '行政登记', 31000),
	(320000, 'permission_leave_rule_basic', '基础设置', 32000),
	(321000, 'permission_leave_rule_high', '高级规则', 32000),
	(1000000, 'permission_admin_list', '查看', 100000),
	(1000001, 'permission_admin_edit', '编辑', 100000),
	(1000003, 'permission_admin_delete', '删除', 100000),
	(2000001, 'permission_department_list', '查看', 200000),
	(2000002, 'permission_department_edit', '编辑', 200000),
	(2000003, 'permission_department_delete', '删除', 200000),
	(2000004, 'permission_department_import', '导入', 200000),
	(2100001, 'permission_employee_list', '查看', 210000),
	(2100002, 'permission_employee_edit', '编辑', 210000),
	(2100003, 'permission_employee_delete', '删除', 210000),
	(2100004, 'permission_employee_import', '导入', 210000),
	(3000000, 'permission_attendance_list', '查看', 300000),
	(3000001, 'permission_attendance_edit', '编辑', 300000),
	(3000002, 'permission_attendance_delete', '删除', 300000),
	(3000003, 'permission_attendance_import', '导入数据', 300000),
	(3000004, 'permission_attendance_clear', '清空数据', 300000),
	(3000005, 'permission_attendance_leave_set', '设置节假日', 300000),
	(3000006, 'permission_attendance_work_set', '设置工作日', 300000),
	(3000007, 'permission_attendance_analysis', '分析数据', 300000),
	(3100000, 'permission_leave_list', '查看', 310000),
	(3100001, 'permission_leave_edit', '编辑', 310000),
	(3100002, 'permission_leave_delete', '删除', 310000),
	(3100003, 'permission_leave_import', '导入数据', 310000),
	(3100004, 'permission_leave_clear', '清空数据', 310000),
	(3200000, 'permission_leave_rule_basic_list', '查看', 320000),
	(3200001, 'permission_leave_rule_basic_edit', '编辑', 320000),
	(3210000, 'permission_leave_rule_high_list', '查看', 321000),
	(3210001, 'permission_leave_rule_high_edit', '编辑', 321000),
	(3210002, 'permission_leave_rule_high_delete', '删除', 321000);

CREATE TABLE `edy_menus` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `permission_id` int(11) DEFAULT NULL,
  `parent_menus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_menus_fk` (`parent_menus_id`),
  KEY `menus_permission_fk` (`permission_id`),
  CONSTRAINT `menus_menus_fk` FOREIGN KEY (`parent_menus_id`) REFERENCES `edy_menus` (`id`),
  CONSTRAINT `menus_permission_fk` FOREIGN KEY (`permission_id`) REFERENCES `edy_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `edy_menus` (`id`, `url`, `name`, `parent_menus_id`, `level`, `permission_id`)
VALUES
	(1000, '', '权限', NULL, 1, 1000),
	(2000, '', '人力', NULL, 1, 2000),
	(3000, '', '考勤', NULL, 1, 3000),
	(10000, '', '权限设置', 1000, 2, 10000),
	(20000, '', '部门', 2000, 2, 20000),
	(21000, '', '员工', 2000, 2, 21000),
	(30000, '', '数据管理', 3000, 2, 30000),
	(31000, '', '行政管理', 3000, 2, 31000),
	(32000, '', '规则设置', 3000, 2, 32000),
	(100000, '/admin/list', '管理员设置', 10000, 3, 100000),
	(200000, '/department/list', '部门管理', 20000, 3, 200000),
	(210000, '/employee/list', '员工管理', 21000, 3, 210000),
	(300000, '/attendance/list', '基础数据', 30000, 3, 300000),
	(310000, '/leave/list', '行政登记', 31000, 3, 310000),
	(320000, '/attendance/rule/basic', '基础设置', 32000, 3, 320000),
	(321000, '/attendance/rule/list', '高级规则', 32000, 3, 321000);