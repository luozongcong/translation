-- 删除表
DROP TABLE IF EXISTS `t_book`;

-- 创建表
CREATE TABLE `t_book` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`code` VARCHAR(100) NOT NULL COMMENT '编码',
	`title` VARCHAR(100) NOT NULL COMMENT '标题',
	`content` VARCHAR(4000) NOT NULL COMMENT '内容简介',
	`sort_no` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序号',
	`create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
	`update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	PRIMARY KEY (`id`)
)
COMMENT='书籍'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

-- 内容

INSERT INTO t_book(code, title,content) VALUES('DAODEJING','道德经','道德经全文');

-- 更新排序号
UPDATE t_book SET sort_no=id WHERE id<2;
